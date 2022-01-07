
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int align; int attr; int size; } ;
typedef TYPE_1__ zend_ffi_type ;
struct TYPE_6__ {int align; int type; } ;
typedef TYPE_2__ zend_ffi_dcl ;


 int ZEND_ASSERT (int) ;
 int ZEND_FFI_ATTR_PACKED ;
 TYPE_1__* ZEND_FFI_TYPE (int ) ;
 scalar_t__ ZEND_FFI_TYPE_STRUCT ;

void zend_ffi_adjust_struct_size(zend_ffi_dcl *dcl)
{
 zend_ffi_type *struct_type = ZEND_FFI_TYPE(dcl->type);

 ZEND_ASSERT(struct_type->kind == ZEND_FFI_TYPE_STRUCT);
 if (dcl->align > struct_type->align) {
  struct_type->align = dcl->align;
 }
 if (!(struct_type->attr & ZEND_FFI_ATTR_PACKED)) {
  struct_type->size = ((struct_type->size + (struct_type->align - 1)) / struct_type->align) * struct_type->align;
 }
 dcl->align = 0;
}
