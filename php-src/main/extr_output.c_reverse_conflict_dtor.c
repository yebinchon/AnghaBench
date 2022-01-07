
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int * Z_PTR_P (int *) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void reverse_conflict_dtor(zval *zv)
{
 HashTable *ht = Z_PTR_P(zv);
 zend_hash_destroy(ht);
}
