
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_string ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisCluster ;
struct TYPE_6__ {int val_len; int val; int val_free; int key_len; int key; int slot; int key_free; int kbuf; } ;
typedef TYPE_2__ clusterKeyValHT ;
typedef int HashTable ;
typedef int HashPosition ;


 int CLUSTER_THROW_EXCEPTION (char*,int ) ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int cluster_hash_key (int ,int ) ;
 int redis_key_prefix (int ,int *,int *) ;
 int redis_pack (int ,int *,int *,int *) ;
 int snprintf (int ,int,char*,long) ;
 int * zend_hash_get_current_data_ex (int *,int *) ;
 int zend_hash_get_current_key_ex (int *,int **,scalar_t__*,int *) ;

__attribute__((used)) static int get_key_val_ht(redisCluster *c, HashTable *ht, HashPosition *ptr,
                          clusterKeyValHT *kv)
{
    zval *z_val;
    zend_ulong idx;



    zend_string *zkey;
    switch (zend_hash_get_current_key_ex(ht, &zkey, &idx, ptr)) {
        case 128:
            kv->key_len = ZSTR_LEN(zkey);
            kv->key = ZSTR_VAL(zkey);
            break;
        case 129:
            kv->key_len = snprintf(kv->kbuf,sizeof(kv->kbuf),"%ld",(long)idx);
            kv->key = kv->kbuf;
            break;
        default:
            CLUSTER_THROW_EXCEPTION("Internal Zend HashTable error", 0);
            return -1;
    }


    kv->key_free = redis_key_prefix(c->flags, &(kv->key), &(kv->key_len));
    kv->slot = cluster_hash_key(kv->key, kv->key_len);


    if ((z_val = zend_hash_get_current_data_ex(ht, ptr)) == ((void*)0)) {
        CLUSTER_THROW_EXCEPTION("Internal Zend HashTable error", 0);
        return -1;
    }


    kv->val_free = redis_pack(c->flags,z_val,&(kv->val),&(kv->val_len));


    return 0;
}
