
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_function ;


 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int xmlreader_open_fn ;
 int xmlreader_xml_fn ;
 int * zend_std_get_method (int **,int *,int const*) ;

__attribute__((used)) static zend_function *xmlreader_get_method(zend_object **obj, zend_string *name, const zval *key)
{
 if (ZSTR_LEN(name) == sizeof("open") - 1
   && (ZSTR_VAL(name)[0] == 'o' || ZSTR_VAL(name)[0] == 'O')
   && (ZSTR_VAL(name)[1] == 'p' || ZSTR_VAL(name)[1] == 'P')
   && (ZSTR_VAL(name)[2] == 'e' || ZSTR_VAL(name)[2] == 'E')
   && (ZSTR_VAL(name)[3] == 'n' || ZSTR_VAL(name)[3] == 'N')) {
  return (zend_function*)&xmlreader_open_fn;
 } else if (ZSTR_LEN(name) == sizeof("xml") - 1
   && (ZSTR_VAL(name)[0] == 'x' || ZSTR_VAL(name)[0] == 'X')
   && (ZSTR_VAL(name)[1] == 'm' || ZSTR_VAL(name)[1] == 'M')
   && (ZSTR_VAL(name)[2] == 'l' || ZSTR_VAL(name)[2] == 'L')) {
  return (zend_function*)&xmlreader_xml_fn;
 }
 return zend_std_get_method(obj, name, key);;
}
