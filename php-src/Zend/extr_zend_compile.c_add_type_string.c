
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int memcpy (char*,char*,int) ;
 int * zend_string_alloc (int,int ) ;
 int * zend_string_copy (int *) ;
 int zend_string_release (int *) ;

__attribute__((used)) static zend_string *add_type_string(zend_string *type, zend_string *new_type) {
 zend_string *result;
 if (type == ((void*)0)) {
  return zend_string_copy(new_type);
 }


 result = zend_string_alloc(ZSTR_LEN(type) + ZSTR_LEN(new_type) + 1, 0);
 memcpy(ZSTR_VAL(result), ZSTR_VAL(type), ZSTR_LEN(type));
 ZSTR_VAL(result)[ZSTR_LEN(type)] = '|';
 memcpy(ZSTR_VAL(result) + ZSTR_LEN(type) + 1, ZSTR_VAL(new_type), ZSTR_LEN(new_type));
 ZSTR_VAL(result)[ZSTR_LEN(type) + ZSTR_LEN(new_type) + 1] = '\0';
 zend_string_release(type);
 return result;
}
