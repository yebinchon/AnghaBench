
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * type; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int FAILURE ;
 int FFI_G (int ) ;
 int LONGJMP (int ,int ) ;
 scalar_t__ SUCCESS ;
 int bailout ;
 int zend_ffi_cleanup_dcl (TYPE_1__*) ;
 int zend_ffi_finalize_type (TYPE_1__*) ;
 scalar_t__ zend_ffi_nested_type (int *,int *) ;
 int zend_ffi_type_char ;

void zend_ffi_nested_declaration(zend_ffi_dcl *dcl, zend_ffi_dcl *nested_dcl)
{

 zend_ffi_finalize_type(dcl);
 if (!nested_dcl->type || nested_dcl->type == &zend_ffi_type_char) {
  nested_dcl->type = dcl->type;
 } else {
  if (zend_ffi_nested_type(dcl->type, nested_dcl->type) != SUCCESS) {
   zend_ffi_cleanup_dcl(nested_dcl);
   LONGJMP(FFI_G(bailout), FAILURE);
  }
 }
 dcl->type = nested_dcl->type;
}
