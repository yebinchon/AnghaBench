
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int metric_API_producers; } ;
struct rrdengine_instance {TYPE_3__ stats; } ;
struct rrdeng_page_descr {TYPE_6__* pg_cache_descr; int page_length; } ;
struct rrdeng_collect_handle {struct rrdeng_page_descr* descr; struct rrdeng_page_descr* prev_descr; int page_correlation_id; struct rrdengine_instance* ctx; } ;
struct TYPE_11__ {struct rrdeng_page_descr* page; } ;
struct TYPE_10__ {TYPE_2__* state; } ;
struct TYPE_7__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_8__ {TYPE_1__ handle; } ;
typedef TYPE_4__ RRDDIM ;


 int D_RRDENGINE ;
 int assert (int) ;
 int debug (int,char*) ;
 int debug_flags ;
 int freez (struct rrdeng_page_descr*) ;
 scalar_t__ likely (int ) ;
 int page_has_only_empty_metrics (struct rrdeng_page_descr*) ;
 int pg_cache_punch_hole (struct rrdengine_instance*,struct rrdeng_page_descr*,int) ;
 int pg_cache_put (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int pg_cache_try_get_unsafe (struct rrdeng_page_descr*,int ) ;
 int print_page_cache_descr (struct rrdeng_page_descr*) ;
 int rrd_stat_atomic_add (int *,int) ;
 int rrdeng_commit_page (struct rrdengine_instance*,struct rrdeng_page_descr*,int ) ;
 int rrdeng_destroy_pg_cache_descr (struct rrdengine_instance*,TYPE_6__*) ;
 int rrdeng_page_descr_mutex_lock (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int rrdeng_page_descr_mutex_unlock (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 scalar_t__ unlikely (int) ;

void rrdeng_store_metric_flush_current_page(RRDDIM *rd)
{
    struct rrdeng_collect_handle *handle;
    struct rrdengine_instance *ctx;
    struct rrdeng_page_descr *descr;

    handle = &rd->state->handle.rrdeng;
    ctx = handle->ctx;
    descr = handle->descr;
    if (unlikely(((void*)0) == descr)) {
        return;
    }
    if (likely(descr->page_length)) {
        int ret, page_is_empty;

        rrd_stat_atomic_add(&ctx->stats.metric_API_producers, -1);

        if (handle->prev_descr) {

            pg_cache_put(ctx, handle->prev_descr);
        }
        page_is_empty = page_has_only_empty_metrics(descr);
        if (page_is_empty) {
            debug(D_RRDENGINE, "Page has empty metrics only, deleting:");
            if (unlikely(debug_flags & D_RRDENGINE))
                print_page_cache_descr(descr);
            pg_cache_put(ctx, descr);
            pg_cache_punch_hole(ctx, descr, 1);
            handle->prev_descr = ((void*)0);
        } else {

            rrdeng_page_descr_mutex_lock(ctx, descr);
            ret = pg_cache_try_get_unsafe(descr, 0);
            rrdeng_page_descr_mutex_unlock(ctx, descr);
            assert (1 == ret);

            rrdeng_commit_page(ctx, descr, handle->page_correlation_id);
            handle->prev_descr = descr;
        }
    } else {
        freez(descr->pg_cache_descr->page);
        rrdeng_destroy_pg_cache_descr(ctx, descr->pg_cache_descr);
        freez(descr);
    }
    handle->descr = ((void*)0);
}
