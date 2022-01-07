
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fields; int * tag_name; } ;
struct TYPE_8__ {int attr; int align; TYPE_1__ record; scalar_t__ size; int kind; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_9__ {int attr; int align; int flags; int type; } ;
typedef TYPE_3__ zend_ffi_dcl ;


 int FFI_G (int ) ;
 int ZEND_FFI_ATTR_UNION ;
 int ZEND_FFI_DCL_UNION ;
 int ZEND_FFI_STRUCT_ATTRS ;
 int ZEND_FFI_TYPE_MAKE_OWNED (TYPE_2__*) ;
 int ZEND_FFI_TYPE_STRUCT ;
 int default_type_attr ;
 TYPE_2__* pemalloc (int,int) ;
 int persistent ;
 int zend_ffi_field_hash_dtor ;
 int zend_ffi_field_hash_persistent_dtor ;
 int zend_hash_init (int *,int ,int *,int ,int) ;

void zend_ffi_make_struct_type(zend_ffi_dcl *dcl)
{
 zend_ffi_type *type = pemalloc(sizeof(zend_ffi_type), FFI_G(persistent));
 type->kind = ZEND_FFI_TYPE_STRUCT;
 type->attr = FFI_G(default_type_attr) | (dcl->attr & ZEND_FFI_STRUCT_ATTRS);
 type->size = 0;
 type->align = dcl->align > 1 ? dcl->align : 1;
 if (dcl->flags & ZEND_FFI_DCL_UNION) {
  type->attr |= ZEND_FFI_ATTR_UNION;
 }
 dcl->type = ZEND_FFI_TYPE_MAKE_OWNED(type);
 type->record.tag_name = ((void*)0);
 zend_hash_init(&type->record.fields, 0, ((void*)0), FFI_G(persistent) ? zend_ffi_field_hash_persistent_dtor :zend_ffi_field_hash_dtor, FFI_G(persistent));
 dcl->attr &= ~ZEND_FFI_STRUCT_ATTRS;
 dcl->align = 0;
}
