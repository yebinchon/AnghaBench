
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* kind; int ch; int u64; int d; int i64; } ;
typedef TYPE_1__ zend_ffi_val ;
struct TYPE_8__ {int type; } ;
typedef TYPE_2__ zend_ffi_dcl ;
struct TYPE_9__ {int kind; } ;


 TYPE_6__* ZEND_FFI_TYPE (int ) ;
 void* ZEND_FFI_VAL_CHAR ;
 void* ZEND_FFI_VAL_DOUBLE ;
 void* ZEND_FFI_VAL_ERROR ;
 void* ZEND_FFI_VAL_FLOAT ;
 void* ZEND_FFI_VAL_INT32 ;
 void* ZEND_FFI_VAL_INT64 ;
 void* ZEND_FFI_VAL_LONG_DOUBLE ;
 void* ZEND_FFI_VAL_UINT32 ;
 void* ZEND_FFI_VAL_UINT64 ;
 int zend_ffi_finalize_type (TYPE_2__*) ;
 int zend_ffi_type_dtor (int ) ;

void zend_ffi_expr_cast(zend_ffi_val *val, zend_ffi_dcl *dcl)
{
 zend_ffi_finalize_type(dcl);
 switch (ZEND_FFI_TYPE(dcl->type)->kind) {
  case 137:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64) {
    val->kind = ZEND_FFI_VAL_FLOAT;
    val->d = val->u64;
   } else if (val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_FLOAT;
    val->d = val->i64;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_FLOAT;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_FLOAT;
    val->d = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 138:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64) {
    val->kind = ZEND_FFI_VAL_DOUBLE;
    val->d = val->u64;
   } else if (val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_DOUBLE;
    val->d = val->i64;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_DOUBLE;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_DOUBLE;
    val->d = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 128:
  case 131:
  case 130:
  case 140:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64 || val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_UINT32;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_UINT32;
    val->u64 = val->d;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_UINT32;
    val->u64 = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 132:
  case 135:
  case 134:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64 || val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_INT32;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_INT32;
    val->i64 = val->d;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_INT32;
    val->i64 = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 129:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64 || val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_UINT64;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_UINT64;
    val->u64 = val->d;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_UINT64;
    val->u64 = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 133:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64) {
    val->kind = ZEND_FFI_VAL_CHAR;
    val->ch = val->u64;
   } else if (val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_CHAR;
    val->ch = val->i64;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_CHAR;
    val->ch = val->d;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  case 139:
   if (val->kind == ZEND_FFI_VAL_UINT32 || val->kind == ZEND_FFI_VAL_UINT64 || val->kind == ZEND_FFI_VAL_INT32 || val->kind == ZEND_FFI_VAL_INT64) {
    val->kind = ZEND_FFI_VAL_UINT32;
   } else if (val->kind == ZEND_FFI_VAL_FLOAT || val->kind == ZEND_FFI_VAL_DOUBLE || val->kind == ZEND_FFI_VAL_LONG_DOUBLE) {
    val->kind = ZEND_FFI_VAL_UINT32;
    val->u64 = val->d;
   } else if (val->kind == ZEND_FFI_VAL_CHAR) {
    val->kind = ZEND_FFI_VAL_UINT32;
    val->u64 = val->ch;
   } else {
    val->kind = ZEND_FFI_VAL_ERROR;
   }
   break;
  default:
   val->kind = ZEND_FFI_VAL_ERROR;
   break;
 }
 zend_ffi_type_dtor(dcl->type);
}
