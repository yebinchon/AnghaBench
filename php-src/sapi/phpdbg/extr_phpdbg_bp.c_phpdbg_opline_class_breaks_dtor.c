
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_ARRVAL_P (int *) ;
 int efree (int ) ;
 int zend_hash_destroy (int ) ;

__attribute__((used)) static void phpdbg_opline_class_breaks_dtor(zval *data)
{
 zend_hash_destroy(Z_ARRVAL_P(data));
 efree(Z_ARRVAL_P(data));
}
