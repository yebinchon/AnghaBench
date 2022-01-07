
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int zend_bool ;


 int ZSTR_LEN (int const*) ;
 char* ZSTR_VAL (int const*) ;

__attribute__((used)) static zend_bool php_password_bcrypt_valid(const zend_string *hash) {
 const char *h = ZSTR_VAL(hash);
 return (ZSTR_LEN(hash) == 60) &&
  (h[0] == '$') && (h[1] == '2') && (h[2] == 'y');
}
