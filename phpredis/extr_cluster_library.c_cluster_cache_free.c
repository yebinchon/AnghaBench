
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t count; struct TYPE_5__* master; int hash; } ;
typedef TYPE_1__ redisCachedCluster ;


 int cluster_free_cached_master (TYPE_1__*) ;
 int pefree (TYPE_1__*,int) ;
 int zend_string_release (int ) ;

void cluster_cache_free(redisCachedCluster *rcc) {
    size_t i;


    for (i = 0; i < rcc->count; i++) {
        cluster_free_cached_master(&rcc->master[i]);
    }


    zend_string_release(rcc->hash);
    pefree(rcc->master, 1);
    pefree(rcc, 1);
}
