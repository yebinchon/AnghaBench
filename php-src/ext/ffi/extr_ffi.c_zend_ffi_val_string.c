
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* str; size_t len; int kind; } ;
typedef TYPE_1__ zend_ffi_val ;


 int ZEND_FFI_VAL_ERROR ;
 int ZEND_FFI_VAL_STRING ;

void zend_ffi_val_string(zend_ffi_val *val, const char *str, size_t str_len)
{
 if (str[0] != '\"') {
  val->kind = ZEND_FFI_VAL_ERROR;
 } else {
  val->kind = ZEND_FFI_VAL_STRING;
  val->str = str + 1;
  val->len = str_len - 2;
 }
}
