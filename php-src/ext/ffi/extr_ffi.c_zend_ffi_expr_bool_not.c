
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; int i64; } ;
typedef TYPE_1__ zend_ffi_val ;


 scalar_t__ ZEND_FFI_VAL_INT32 ;
 int zend_ffi_expr_bool (TYPE_1__*) ;

void zend_ffi_expr_bool_not(zend_ffi_val *val)
{
 zend_ffi_expr_bool(val);
 if (val->kind == ZEND_FFI_VAL_INT32) {
  val->i64 = !val->i64;
 }
}
