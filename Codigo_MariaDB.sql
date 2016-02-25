/********************  Entrar  a la base de datos  **********************/
/********************  mysql -h SKYNET -u root -p  **********************/
use geografia;

CREATE TABLE localidades (id_localidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                            nombre CHAR(50), poblacion INT(8), n_provincia INT(2));

insert into localidades  (id_localidad, nombre, poblacion, n_provincia) values
                            (null, 'Leon', '147780', '24'),
                            (null, 'Palencia', '79867', '34'),
                            (null, 'Burgos', '166732', '9'),
                            (null, 'Zamora', '66017', '49'),
                            (null, 'Valladolid', '334820', '47'),
                            (null, 'Soria', '33438', '42'),
                            (null, 'Ávila', '50015', '5'),
                            (null, 'Segovia', '55551', '40'),
                            (null, 'Salamanca', '167316', '37'),
                            (null, 'Oviedo', '199549', '33'),
                            (null, 'Lugo', '88253', '27'),
                            (null, 'Santiago de Compostela', '94057', '15'),
                            (null, 'Pontevedra', '77282', '36'),
                            (null, 'Ourense', '110796', 32);

CREATE TABLE comunidades (id_comunidad INT NOT NULL PRIMARY KEY,
                          nombre CHAR(25),
                          id_capital INT(4) NOT NULL,
                          max_provincias INT(1));

INSERT INTO comunidades (id_comunidad, nombre, id_capital, max_provincias) VALUES
                          ('1', 'Galicia', '3096', '4'),
                          ('5', 'Asturias', '3221', '1'),
                          ('4', 'Castilla y León', '4458', '9');

CREATE TABLE provincias (n_provincia INT NOT NULL PRIMARY KEY,
                          nombre CHAR(25),
                          superficie INT(5),
                          id_capital INT(5) NOT NULL,
                          id_comunidad INT(2));

INSERT INTO provincias (n_provincia, nombre, superficie, id_capital, id_comunidad) VALUES
                          ('5', 'Ávila', '8050', '5061', '4'),
                          ('9', 'Burgos', '14292', '3707', '4'),
                          ('15', 'Coruña', '7921', '3048', '1'),
                          ('24', 'León', '15581', '3338', '4'),
                          ('27', 'Lugo', '9856', '3139', '1'),
                          ('32', 'Ourense', '7273', '2976', '1'),
                          ('33', 'Oviedo', '10604', '3221', '5'),
                          ('34', 'Palencia', '8052', '3560', '4'),
                          ('36', 'Pontevedra', '4495', '2906', '1'),
                          ('37', 'Salamanca', '12350', '4942', '4'),
                          ('40', 'Segovia', '6921', '6190', '4'),
                          ('42', 'Soria', '10306', '4646', '4'),
                          ('47', 'Valladolid', '8028', '4458', '4'),
                          ('49', 'Zamora', '10561', '4277', '4');