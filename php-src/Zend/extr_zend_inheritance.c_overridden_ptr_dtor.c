
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_function ;


 int Z_PTR_P (int *) ;
 int efree_size (int ,int) ;

__attribute__((used)) static void overridden_ptr_dtor(zval *zv)
{
 efree_size(Z_PTR_P(zv), sizeof(zend_function));
}
