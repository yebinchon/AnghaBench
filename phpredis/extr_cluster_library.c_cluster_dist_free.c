
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int efree (int *) ;
 int zend_hash_destroy (int *) ;

void cluster_dist_free(HashTable *ht) {
    zend_hash_destroy(ht);
    efree(ht);
}
