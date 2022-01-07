
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int FREE_HASHTABLE (int ) ;
 int Z_PTR_P (int *) ;
 int zend_hash_destroy (int ) ;

__attribute__((used)) static void variance_obligation_ht_dtor(zval *zv) {
 zend_hash_destroy(Z_PTR_P(zv));
 FREE_HASHTABLE(Z_PTR_P(zv));
}
