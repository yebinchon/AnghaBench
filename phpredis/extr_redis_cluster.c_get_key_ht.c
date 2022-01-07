
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisCluster ;
struct TYPE_6__ {int key_len; int key; int slot; int key_free; } ;
typedef TYPE_2__ clusterKeyValHT ;
typedef int HashTable ;
typedef int HashPosition ;


 int CLUSTER_THROW_EXCEPTION (char*,int ) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int cluster_hash_key (int ,int ) ;
 int convert_to_string (int *) ;
 int redis_key_prefix (int ,int *,int *) ;
 int * zend_hash_get_current_data_ex (int *,int *) ;

__attribute__((used)) static int get_key_ht(redisCluster *c, HashTable *ht, HashPosition *ptr,
                      clusterKeyValHT *kv)
{
    zval *z_key;

    if ((z_key = zend_hash_get_current_data_ex(ht, ptr)) == ((void*)0)) {

        CLUSTER_THROW_EXCEPTION("Internal Zend HashTable error", 0);
        return -1;
    }


    convert_to_string(z_key);

    kv->key = Z_STRVAL_P(z_key);
    kv->key_len = Z_STRLEN_P(z_key);
    kv->key_free = redis_key_prefix(c->flags, &(kv->key), &(kv->key_len));


    kv->slot = cluster_hash_key(kv->key, kv->key_len);


    return 0;
}
