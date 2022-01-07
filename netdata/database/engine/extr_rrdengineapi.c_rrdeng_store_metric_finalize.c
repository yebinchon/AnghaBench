
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rrdengine_instance {int dummy; } ;
struct rrdeng_collect_handle {scalar_t__ prev_descr; struct rrdengine_instance* ctx; } ;
struct TYPE_8__ {TYPE_2__* state; } ;
struct TYPE_6__ {struct rrdeng_collect_handle rrdeng; } ;
struct TYPE_7__ {TYPE_1__ handle; } ;
typedef TYPE_3__ RRDDIM ;


 int pg_cache_put (struct rrdengine_instance*,scalar_t__) ;
 int rrdeng_store_metric_flush_current_page (TYPE_3__*) ;

void rrdeng_store_metric_finalize(RRDDIM *rd)
{
    struct rrdeng_collect_handle *handle;
    struct rrdengine_instance *ctx;

    handle = &rd->state->handle.rrdeng;
    ctx = handle->ctx;
    rrdeng_store_metric_flush_current_page(rd);
    if (handle->prev_descr) {

        pg_cache_put(ctx, handle->prev_descr);
    }
}
