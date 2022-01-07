
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * type; } ;
typedef TYPE_1__ zend_ffi_dcl ;


 int zend_ffi_type_dtor (int *) ;

__attribute__((used)) static void zend_ffi_cleanup_dcl(zend_ffi_dcl *dcl)
{
 if (dcl) {
  zend_ffi_type_dtor(dcl->type);
  dcl->type = ((void*)0);
 }
}
