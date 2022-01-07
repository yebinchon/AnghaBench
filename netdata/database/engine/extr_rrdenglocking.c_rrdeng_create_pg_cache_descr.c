
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_cache_descriptors; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct page_cache_descr {int mutex; int cond; scalar_t__ waiters; scalar_t__ refcnt; int * next; int prev; scalar_t__ flags; int * page; } ;


 int assert (int) ;
 struct page_cache_descr* mallocz (int) ;
 int rrd_stat_atomic_add (int *,int) ;
 scalar_t__ uv_cond_init (int *) ;
 scalar_t__ uv_mutex_init (int *) ;

struct page_cache_descr *rrdeng_create_pg_cache_descr(struct rrdengine_instance *ctx)
{
    struct page_cache_descr *pg_cache_descr;

    pg_cache_descr = mallocz(sizeof(*pg_cache_descr));
    rrd_stat_atomic_add(&ctx->stats.page_cache_descriptors, 1);
    pg_cache_descr->page = ((void*)0);
    pg_cache_descr->flags = 0;
    pg_cache_descr->prev = pg_cache_descr->next = ((void*)0);
    pg_cache_descr->refcnt = 0;
    pg_cache_descr->waiters = 0;
    assert(0 == uv_cond_init(&pg_cache_descr->cond));
    assert(0 == uv_mutex_init(&pg_cache_descr->mutex));

    return pg_cache_descr;
}
