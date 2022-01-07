
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; void* ptr; void* ptr_holder; int type; } ;
typedef TYPE_1__ zend_ffi_cdata ;


 int ZEND_FFI_FLAG_OWNED ;
 int ZEND_FFI_FLAG_PERSISTENT ;
 int pefree (void*,int) ;
 int zend_ffi_type_dtor (int ) ;

__attribute__((used)) static void zend_ffi_cdata_dtor(zend_ffi_cdata *cdata)
{
 zend_ffi_type_dtor(cdata->type);
 if (cdata->flags & ZEND_FFI_FLAG_OWNED) {
  if (cdata->ptr != (void*)&cdata->ptr_holder) {
   pefree(cdata->ptr, cdata->flags & ZEND_FFI_FLAG_PERSISTENT);
  } else {
   pefree(cdata->ptr_holder, cdata->flags & ZEND_FFI_FLAG_PERSISTENT);
  }
 }
}
