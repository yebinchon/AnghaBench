
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int d; } ;
typedef TYPE_1__ zend_ffi_val ;


 int ZEND_FFI_VAL_DOUBLE ;
 int ZEND_FFI_VAL_FLOAT ;
 int ZEND_FFI_VAL_LONG_DOUBLE ;
 int strtold (char const*,int *) ;

void zend_ffi_val_float_number(zend_ffi_val *val, const char *str, size_t str_len)
{
 val->d = strtold(str, ((void*)0));
 if (str[str_len-1] == 'f' || str[str_len-1] == 'F') {
  val->kind = ZEND_FFI_VAL_FLOAT;
 } else if (str[str_len-1] == 'l' || str[str_len-1] == 'L') {
  val->kind = ZEND_FFI_VAL_LONG_DOUBLE;
 } else {
  val->kind = ZEND_FFI_VAL_DOUBLE;
 }
}
