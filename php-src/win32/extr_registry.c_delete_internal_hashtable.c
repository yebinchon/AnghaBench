
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 scalar_t__ Z_PTR_P (int *) ;
 int free (int *) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void delete_internal_hashtable(zval *zv)
{
 HashTable *ht = (HashTable *)Z_PTR_P(zv);
 zend_hash_destroy(ht);
 free(ht);
}
