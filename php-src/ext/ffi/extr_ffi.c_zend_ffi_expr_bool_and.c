
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int i64; } ;
typedef TYPE_1__ zend_ffi_val ;


 scalar_t__ ZEND_FFI_VAL_ERROR ;
 scalar_t__ ZEND_FFI_VAL_INT32 ;
 int zend_ffi_expr_bool (TYPE_1__*) ;

void zend_ffi_expr_bool_and(zend_ffi_val *val, zend_ffi_val *op2)
{
 zend_ffi_expr_bool(val);
 zend_ffi_expr_bool(op2);
 if (val->kind == ZEND_FFI_VAL_INT32 && op2->kind == ZEND_FFI_VAL_INT32) {
  val->i64 = val->i64 && op2->i64;
 } else {
  val->kind = ZEND_FFI_VAL_ERROR;
 }
}
