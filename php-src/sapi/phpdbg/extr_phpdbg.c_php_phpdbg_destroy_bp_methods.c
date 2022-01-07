
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_ARRVAL_P (int *) ;
 int efree (int ) ;
 int zend_hash_destroy (int ) ;

__attribute__((used)) static void php_phpdbg_destroy_bp_methods(zval *brake)
{
 zend_hash_destroy(Z_ARRVAL_P(brake));
 efree(Z_ARRVAL_P(brake));
}
