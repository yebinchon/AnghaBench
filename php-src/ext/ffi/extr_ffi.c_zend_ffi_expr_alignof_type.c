
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int u64; int kind; } ;
typedef TYPE_1__ zend_ffi_val ;
struct TYPE_8__ {int type; } ;
typedef TYPE_2__ zend_ffi_dcl ;
struct TYPE_9__ {int align; } ;


 TYPE_6__* ZEND_FFI_TYPE (int ) ;
 int ZEND_FFI_VAL_UINT32 ;
 int zend_ffi_finalize_type (TYPE_2__*) ;
 int zend_ffi_type_dtor (int ) ;

void zend_ffi_expr_alignof_type(zend_ffi_val *val, zend_ffi_dcl *dcl)
{
 zend_ffi_finalize_type(dcl);
 val->kind = ZEND_FFI_VAL_UINT32;
 val->u64 = ZEND_FFI_TYPE(dcl->type)->align;
 zend_ffi_type_dtor(dcl->type);
}
