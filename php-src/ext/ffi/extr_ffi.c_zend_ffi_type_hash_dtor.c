
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_ffi_type ;


 int * Z_PTR_P (int *) ;
 int zend_ffi_type_dtor (int *) ;

__attribute__((used)) static void zend_ffi_type_hash_dtor(zval *zv)
{
 zend_ffi_type *type = Z_PTR_P(zv);
 zend_ffi_type_dtor(type);
}
