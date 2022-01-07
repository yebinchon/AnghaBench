
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int HashTable ;


 int ALLOC_HASHTABLE (int *) ;
 int zend_hash_init (int *,int,int *,int *,int ) ;
 int zend_hash_next_index_insert (int *,int *) ;

__attribute__((used)) static HashTable *method_args_to_ht(zval *z_args, int argc) {
    HashTable *ht_ret;
    int i;


    ALLOC_HASHTABLE(ht_ret);
    zend_hash_init(ht_ret, argc, ((void*)0), ((void*)0), 0);


    for (i = 0; i < argc; i++) {
        zend_hash_next_index_insert(ht_ret, &z_args[i]);
    }


    return ht_ret;
}
