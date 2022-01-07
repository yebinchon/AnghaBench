
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ zend_ffi_field ;


 TYPE_1__* Z_PTR_P (int *) ;
 int efree (TYPE_1__*) ;
 int zend_ffi_type_dtor (int ) ;

__attribute__((used)) static void zend_ffi_field_hash_dtor(zval *zv)
{
 zend_ffi_field *field = Z_PTR_P(zv);
 zend_ffi_type_dtor(field->type);
 efree(field);
}
