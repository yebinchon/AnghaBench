
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ redisCluster ;
struct TYPE_6__ {char* val; size_t val_len; int val_free; } ;
typedef TYPE_2__ clusterKeyVal ;


 int redis_pack (int ,int *,char**,size_t*) ;

void cluster_dist_add_val(redisCluster *c, clusterKeyVal *kv, zval *z_val
                        )
{
    char *val;
    size_t val_len;
    int val_free;


    val_free = redis_pack(c->flags, z_val, &val, &val_len);


    kv->val = val;
    kv->val_len = val_len;
    kv->val_free = val_free;
}
