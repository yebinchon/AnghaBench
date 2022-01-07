
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int kind; int * tag_name; } ;
struct TYPE_10__ {int attr; TYPE_1__ enumeration; int align; int size; int kind; } ;
typedef TYPE_2__ zend_ffi_type ;
struct TYPE_11__ {int attr; int type; } ;
typedef TYPE_3__ zend_ffi_dcl ;
struct TYPE_13__ {int align; int size; } ;
struct TYPE_12__ {int align; int size; } ;


 int FFI_G (int ) ;
 int ZEND_FFI_ATTR_PACKED ;
 int ZEND_FFI_ENUM_ATTRS ;
 int ZEND_FFI_TYPE_ENUM ;
 int ZEND_FFI_TYPE_MAKE_OWNED (TYPE_2__*) ;
 int ZEND_FFI_TYPE_UINT32 ;
 int ZEND_FFI_TYPE_UINT8 ;
 int default_type_attr ;
 TYPE_2__* pemalloc (int,int) ;
 int persistent ;
 TYPE_5__ zend_ffi_type_uint32 ;
 TYPE_4__ zend_ffi_type_uint8 ;

void zend_ffi_make_enum_type(zend_ffi_dcl *dcl)
{
 zend_ffi_type *type = pemalloc(sizeof(zend_ffi_type), FFI_G(persistent));
 type->kind = ZEND_FFI_TYPE_ENUM;
 type->attr = FFI_G(default_type_attr) | (dcl->attr & ZEND_FFI_ENUM_ATTRS);
 type->enumeration.tag_name = ((void*)0);
 if (type->attr & ZEND_FFI_ATTR_PACKED) {
  type->size = zend_ffi_type_uint8.size;
  type->align = zend_ffi_type_uint8.align;
  type->enumeration.kind = ZEND_FFI_TYPE_UINT8;
 } else {
  type->size = zend_ffi_type_uint32.size;
  type->align = zend_ffi_type_uint32.align;
  type->enumeration.kind = ZEND_FFI_TYPE_UINT32;
 }
 dcl->type = ZEND_FFI_TYPE_MAKE_OWNED(type);
 dcl->attr &= ~ZEND_FFI_ENUM_ATTRS;
}
