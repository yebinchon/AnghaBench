
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int align; } ;
typedef TYPE_1__ zend_ffi_dcl ;
struct TYPE_7__ {int align; } ;


 int MAX (int ,int ) ;
 TYPE_5__* ZEND_FFI_TYPE (int ) ;
 int zend_ffi_finalize_type (TYPE_1__*) ;

void zend_ffi_align_as_type(zend_ffi_dcl *dcl, zend_ffi_dcl *align_dcl)
{
 zend_ffi_finalize_type(align_dcl);
 dcl->align = MAX(align_dcl->align, ZEND_FFI_TYPE(align_dcl->type)->align);
}
