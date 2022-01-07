
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int zval_ptr_dtor_nogc (int *) ;

__attribute__((used)) static void zend_optimizer_zval_dtor_wrapper(zval *zvalue)
{
 zval_ptr_dtor_nogc(zvalue);
}
