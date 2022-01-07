
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double timeout; double read_timeout; int persistent; long waitms; int nodes; int auth; } ;
typedef TYPE_1__ redisCluster ;
typedef int redisCachedCluster ;
typedef int HashTable ;


 scalar_t__ SUCCESS ;
 int * cluster_cache_load (int *) ;
 int cluster_cache_store (int *,int ) ;
 int cluster_init_cache (TYPE_1__*,int *) ;
 scalar_t__ cluster_init_seeds (TYPE_1__*,int *) ;
 scalar_t__ cluster_map_keyspace (TYPE_1__*) ;
 int cluster_validate_args (double,double,int *) ;
 int zend_string_init (char*,size_t,int ) ;

__attribute__((used)) static void redis_cluster_init(redisCluster *c, HashTable *ht_seeds, double timeout,
                               double read_timeout, int persistent, char *auth,
                               size_t auth_len)
{
    redisCachedCluster *cc;

    cluster_validate_args(timeout, read_timeout, ht_seeds);

    if (auth && auth_len > 0) {
        c->auth = zend_string_init(auth, auth_len, 0);
    }

    c->timeout = timeout;
    c->read_timeout = read_timeout;
    c->persistent = persistent;



    c->waitms = (long)(timeout * 1000);


    if ((cc = cluster_cache_load(ht_seeds))) {
        cluster_init_cache(c, cc);
    } else if (cluster_init_seeds(c, ht_seeds) == SUCCESS &&
               cluster_map_keyspace(c) == SUCCESS)
    {
        cluster_cache_store(ht_seeds, c->nodes);
    }
}
