
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;


 int ZVAL_STR (int *,int *) ;
 scalar_t__ Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int * zend_string_init (char*,scalar_t__,int ) ;
 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static inline void drop_leading_backslash(zval *val) {
 if (Z_STRVAL_P(val)[0] == '\\') {
  zend_string *str = zend_string_init(Z_STRVAL_P(val) + 1, Z_STRLEN_P(val) - 1, 0);
  zval_ptr_dtor_nogc(val);
  ZVAL_STR(val, str);
 }
}
