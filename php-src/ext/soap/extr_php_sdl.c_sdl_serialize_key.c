
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int smart_str ;


 int WSDL_CACHE_PUT_INT (int ,int *) ;
 int WSDL_CACHE_PUT_N (int ,int ,int *) ;
 int WSDL_NO_STRING_MARKER ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;

__attribute__((used)) static void sdl_serialize_key(zend_string *key, smart_str *out)
{
 if (key) {
  WSDL_CACHE_PUT_INT(ZSTR_LEN(key), out);
  WSDL_CACHE_PUT_N(ZSTR_VAL(key), ZSTR_LEN(key), out);
 } else {
  WSDL_CACHE_PUT_INT(WSDL_NO_STRING_MARKER, out);
 }
}
