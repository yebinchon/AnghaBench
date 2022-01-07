
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subscribed_slot; double timeout; double read_timeout; int failover; int persistent; long waitms; int nodes; int seeds; int * err; int * auth; scalar_t__ clusterdown; void* flags; } ;
typedef TYPE_1__ redisCluster ;
typedef int RedisSock ;


 int ALLOC_HASHTABLE (int ) ;
 void* ecalloc (int,int) ;
 int ht_free_node ;
 int ht_free_seed ;
 int zend_hash_init (int ,int ,int *,int ,int ) ;

redisCluster *cluster_create(double timeout, double read_timeout,
                                           int failover, int persistent)
{
    redisCluster *c;


    c = ecalloc(1, sizeof(redisCluster));


    c->flags = ecalloc(1, sizeof(RedisSock));
    c->subscribed_slot = -1;
    c->clusterdown = 0;
    c->timeout = timeout;
    c->read_timeout = read_timeout;
    c->failover = failover;
    c->persistent = persistent;
    c->auth = ((void*)0);
    c->err = ((void*)0);


    c->waitms = (long)(1000 * timeout);


    ALLOC_HASHTABLE(c->seeds);
    zend_hash_init(c->seeds, 0, ((void*)0), ht_free_seed, 0);


    ALLOC_HASHTABLE(c->nodes);
    zend_hash_init(c->nodes, 0, ((void*)0), ht_free_node, 0);

    return c;
}
