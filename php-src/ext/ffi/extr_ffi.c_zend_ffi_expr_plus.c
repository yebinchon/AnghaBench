
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ zend_ffi_val ;


 scalar_t__ ZEND_FFI_VAL_CHAR ;
 scalar_t__ ZEND_FFI_VAL_DOUBLE ;
 scalar_t__ ZEND_FFI_VAL_ERROR ;
 scalar_t__ ZEND_FFI_VAL_FLOAT ;
 scalar_t__ ZEND_FFI_VAL_INT32 ;
 scalar_t__ ZEND_FFI_VAL_INT64 ;
 scalar_t__ ZEND_FFI_VAL_LONG_DOUBLE ;
 scalar_t__ ZEND_FFI_VAL_UINT32 ;
 scalar_t__ ZEND_FFI_VAL_UINT64 ;

void zend_ffi_expr_plus(zend_ffi_val *val)
{
 if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64) {
 } else if (val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
 } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
 } else if (val->kind == ZEND_FFI_VAL_CHAR) {
 } else {
  val->kind = ZEND_FFI_VAL_ERROR;
 }
}
