
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int FAILURE ;
 int FFI_G (int ) ;
 int LONGJMP (int ,int ) ;
 scalar_t__ SUCCESS ;
 int ZEND_FFI_TYPE (int ) ;
 int bailout ;
 int zend_ffi_cleanup_dcl (TYPE_1__*) ;
 int zend_ffi_finalize_type (TYPE_1__*) ;
 scalar_t__ zend_ffi_validate_var_type (int ,int ) ;

void zend_ffi_validate_type_name(zend_ffi_dcl *dcl)
{
 zend_ffi_finalize_type(dcl);
 if (zend_ffi_validate_var_type(ZEND_FFI_TYPE(dcl->type), 0) != SUCCESS) {
  zend_ffi_cleanup_dcl(dcl);
  LONGJMP(FFI_G(bailout), FAILURE);
 }
}
