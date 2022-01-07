
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int ch; int i64; int u64; } ;
typedef TYPE_1__ zend_ffi_val ;


 scalar_t__ ZEND_FFI_VAL_CHAR ;
 scalar_t__ ZEND_FFI_VAL_ERROR ;
 scalar_t__ ZEND_FFI_VAL_INT32 ;
 scalar_t__ ZEND_FFI_VAL_INT64 ;
 scalar_t__ ZEND_FFI_VAL_UINT32 ;
 scalar_t__ ZEND_FFI_VAL_UINT64 ;

void zend_ffi_expr_bw_not(zend_ffi_val *val)
{
 if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64) {
  val->u64 = ~val->u64;
 } else if (val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
  val->i64 = ~val->i64;
 } else if (val->kind == ZEND_FFI_VAL_CHAR) {
  val->ch = ~val->ch;
 } else {
  val->kind = ZEND_FFI_VAL_ERROR;
 }
}
