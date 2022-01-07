
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int u64; int kind; } ;
typedef TYPE_1__ zend_ffi_val ;
struct TYPE_9__ {int size; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_10__ {int type; } ;
typedef TYPE_3__ zend_ffi_dcl ;


 TYPE_2__* ZEND_FFI_TYPE (int ) ;
 int ZEND_FFI_VAL_UINT32 ;
 int ZEND_FFI_VAL_UINT64 ;
 int zend_ffi_finalize_type (TYPE_3__*) ;
 int zend_ffi_type_dtor (int ) ;

void zend_ffi_expr_sizeof_type(zend_ffi_val *val, zend_ffi_dcl *dcl)
{
 zend_ffi_type *type;

 zend_ffi_finalize_type(dcl);
 type = ZEND_FFI_TYPE(dcl->type);
 val->kind = (type->size > 0xffffffff) ? ZEND_FFI_VAL_UINT64 : ZEND_FFI_VAL_UINT32;
 val->u64 = type->size;
 zend_ffi_type_dtor(dcl->type);
}
