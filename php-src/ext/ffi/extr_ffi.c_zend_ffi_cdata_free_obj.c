
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object ;
typedef int zend_ffi_cdata ;


 int zend_ffi_cdata_dtor (int *) ;

__attribute__((used)) static void zend_ffi_cdata_free_obj(zend_object *object)
{
 zend_ffi_cdata *cdata = (zend_ffi_cdata*)object;

 zend_ffi_cdata_dtor(cdata);
}
