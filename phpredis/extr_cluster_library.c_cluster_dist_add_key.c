
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_ulong ;
struct TYPE_3__ {int ** master; int flags; } ;
typedef TYPE_1__ redisCluster ;
typedef int clusterKeyVal ;
typedef int clusterDistList ;
typedef int HashTable ;


 int FAILURE ;
 int SUCCESS ;
 int * cluster_dl_add_key (int *,char*,size_t,int) ;
 int * cluster_dl_create () ;
 short cluster_hash_key (char*,size_t) ;
 int efree (char*) ;
 int redis_key_prefix (int ,char**,size_t*) ;
 int * zend_hash_index_find_ptr (int *,int ) ;
 int zend_hash_index_update_ptr (int *,int ,int *) ;

int cluster_dist_add_key(redisCluster *c, HashTable *ht, char *key,
                          size_t key_len, clusterKeyVal **kv)
{
    int key_free;
    short slot;
    clusterDistList *dl;
    clusterKeyVal *retptr;


    key_free = redis_key_prefix(c->flags, &key, &key_len);
    slot = cluster_hash_key(key, key_len);


    if (c->master[slot] == ((void*)0)) {
        if (key_free) efree(key);
        return FAILURE;
    }


    if ((dl = zend_hash_index_find_ptr(ht, (zend_ulong)slot)) == ((void*)0)) {
        dl = cluster_dl_create();
        zend_hash_index_update_ptr(ht, (zend_ulong)slot, dl);
    }


    retptr = cluster_dl_add_key(dl, key, key_len, key_free);


    if (kv) *kv = retptr;

    return SUCCESS;
}
