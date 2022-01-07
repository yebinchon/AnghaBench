
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 scalar_t__ IS_INDIRECT ;
 int * Z_INDIRECT_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int i_zval_ptr_dtor (int *) ;

__attribute__((used)) static void zend_unclean_zval_ptr_dtor(zval *zv)
{
 if (Z_TYPE_P(zv) == IS_INDIRECT) {
  zv = Z_INDIRECT_P(zv);
 }
 i_zval_ptr_dtor(zv);
}
