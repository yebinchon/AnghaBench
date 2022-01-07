
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int thread; } ;
struct rrdengine_instance {TYPE_1__ worker_config; } ;
struct rrdeng_cmd {int opcode; } ;


 int RRDENG_FD_BUDGET_PER_INSTANCE ;
 int RRDENG_SHUTDOWN ;
 int assert (int) ;
 struct rrdengine_instance default_global_ctx ;
 int finalize_rrd_files (struct rrdengine_instance*) ;
 int free_page_cache (struct rrdengine_instance*) ;
 int freez (struct rrdengine_instance*) ;
 int rrd_stat_atomic_add (int *,int ) ;
 int rrdeng_enq_cmd (TYPE_1__*,struct rrdeng_cmd*) ;
 int rrdeng_reserved_file_descriptors ;
 scalar_t__ uv_thread_join (int *) ;

int rrdeng_exit(struct rrdengine_instance *ctx)
{
    struct rrdeng_cmd cmd;

    if (((void*)0) == ctx) {
        return 1;
    }


    cmd.opcode = RRDENG_SHUTDOWN;
    rrdeng_enq_cmd(&ctx->worker_config, &cmd);

    assert(0 == uv_thread_join(&ctx->worker_config.thread));

    finalize_rrd_files(ctx);
    free_page_cache(ctx);

    if (ctx != &default_global_ctx) {
        freez(ctx);
    }
    rrd_stat_atomic_add(&rrdeng_reserved_file_descriptors, -RRDENG_FD_BUDGET_PER_INSTANCE);
    return 0;
}
