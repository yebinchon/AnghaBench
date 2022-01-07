
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 int cluster_dist_free_ht ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;

HashTable *cluster_dist_create() {
    HashTable *ret;

    ALLOC_HASHTABLE(ret);
    zend_hash_init(ret, 0, ((void*)0), cluster_dist_free_ht, 0);

    return ret;
}
