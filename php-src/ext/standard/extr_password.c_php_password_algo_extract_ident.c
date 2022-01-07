
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int ZSTR_LEN (int const*) ;
 char* ZSTR_VAL (int const*) ;
 char* strchr (char const*,char) ;
 int * zend_string_init (char const*,int,int ) ;

zend_string *php_password_algo_extract_ident(const zend_string* hash) {
 const char *ident, *ident_end;

 if (!hash || ZSTR_LEN(hash) < 3) {

  return ((void*)0);
 }

 ident = ZSTR_VAL(hash) + 1;
 ident_end = strchr(ident, '$');
 if (!ident_end) {

  return ((void*)0);
 }

 return zend_string_init(ident, ident_end - ident, 0);
}
