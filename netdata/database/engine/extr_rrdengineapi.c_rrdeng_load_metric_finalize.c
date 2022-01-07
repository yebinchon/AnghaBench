
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int metric_API_consumers; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_query_handle {struct rrdeng_page_descr* descr; struct rrdengine_instance* ctx; } ;
struct rrdeng_page_descr {int dummy; } ;
struct rrddim_query_handle {struct rrdeng_query_handle rrdeng; } ;


 int pg_cache_put (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int rrd_stat_atomic_add (int *,int) ;

void rrdeng_load_metric_finalize(struct rrddim_query_handle *rrdimm_handle)
{
    struct rrdeng_query_handle *handle;
    struct rrdengine_instance *ctx;
    struct rrdeng_page_descr *descr;

    handle = &rrdimm_handle->rrdeng;
    ctx = handle->ctx;
    descr = handle->descr;
    if (descr) {



        pg_cache_put(ctx, descr);
    }
}
