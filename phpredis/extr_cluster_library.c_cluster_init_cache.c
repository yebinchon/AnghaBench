
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zend_string ;
typedef int redisClusterNode ;
struct TYPE_15__ {int ** master; int nodes; int seeds; int persistent; int read_timeout; int timeout; int cache_key; } ;
typedef TYPE_4__ redisCluster ;
struct TYPE_12__ {int port; int * addr; } ;
struct TYPE_16__ {size_t slaves; size_t slots; TYPE_3__* slot; TYPE_2__* slave; TYPE_1__ host; } ;
typedef TYPE_5__ redisCachedMaster ;
struct TYPE_17__ {int count; TYPE_5__* master; int hash; } ;
typedef TYPE_6__ redisCachedCluster ;
typedef int key ;
struct TYPE_14__ {size_t low; size_t high; } ;
struct TYPE_13__ {int port; int * addr; } ;
typedef int RedisSock ;


 int HOST_NAME_MAX ;
 int ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int * cached_master_clone (TYPE_4__*,TYPE_5__*) ;
 int cluster_node_add_slave (int *,int *) ;
 int * cluster_node_create (TYPE_4__*,char*,int ,int ,int ,int) ;
 int efree (int*) ;
 int* emalloc (int) ;
 int fyshuffle (int*,size_t) ;
 int * redis_sock_create (char*,int ,int,int ,int ,int ,int *,int ) ;
 size_t snprintf (char*,int,char*,char*,int) ;
 int zend_hash_str_update_ptr (int ,char*,size_t,int *) ;

void cluster_init_cache(redisCluster *c, redisCachedCluster *cc) {
    RedisSock *sock;
    redisClusterNode *mnode, *slave;
    redisCachedMaster *cm;
    char key[HOST_NAME_MAX];
    size_t keylen, i, j, s;
    int *map;


    map = emalloc(sizeof(*map) * cc->count);
    for (i = 0; i < cc->count; i++) map[i] = i;
    fyshuffle(map, cc->count);


    for (i = 0; i < cc->count; i++) {

        c->cache_key = cc->hash;


        cm = &cc->master[map[i]];


        keylen = snprintf(key, sizeof(key), "%s:%u", ZSTR_VAL(cm->host.addr),
                          cm->host.port);


        sock = redis_sock_create(ZSTR_VAL(cm->host.addr), ZSTR_LEN(cm->host.addr), cm->host.port,
                                 c->timeout, c->read_timeout, c->persistent,
                                 ((void*)0), 0);


        zend_hash_str_update_ptr(c->seeds, key, keylen, sock);


        mnode = cached_master_clone(c, cm);


        zend_hash_str_update_ptr(c->nodes, key, keylen, mnode);


        for (s = 0; s < cm->slaves; s++) {
            zend_string *host = cm->slave[s].addr;
            slave = cluster_node_create(c, ZSTR_VAL(host), ZSTR_LEN(host), cm->slave[s].port, 0, 1);
            cluster_node_add_slave(mnode, slave);
        }


        for (j = 0; j < cm->slots; j++) {
            for (s = cm->slot[j].low; s <= cm->slot[j].high; s++) {
                c->master[s] = mnode;
            }
        }
    }

    efree(map);
}
