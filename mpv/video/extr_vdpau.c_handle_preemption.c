
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_ctx {int is_preempted; int preemption_user_notified; double last_preemption_retry_fail; int preemption_counter; } ;


 int MP_ERR (struct mp_vdpau_ctx*,char*) ;
 int MP_INFO (struct mp_vdpau_ctx*,char*) ;
 int mark_vdpau_objects_uninitialized (struct mp_vdpau_ctx*) ;
 double mp_time_sec () ;
 scalar_t__ win_x11_init_vdpau_procs (struct mp_vdpau_ctx*,int) ;

__attribute__((used)) static int handle_preemption(struct mp_vdpau_ctx *ctx)
{
    if (!ctx->is_preempted)
        return 0;
    mark_vdpau_objects_uninitialized(ctx);
    if (!ctx->preemption_user_notified) {
        MP_ERR(ctx, "Got display preemption notice! Will attempt to recover.\n");
        ctx->preemption_user_notified = 1;
    }


    if (ctx->last_preemption_retry_fail &&
        mp_time_sec() - ctx->last_preemption_retry_fail < 1.0)
        return -1;
    if (win_x11_init_vdpau_procs(ctx, 0) < 0) {
        ctx->last_preemption_retry_fail = mp_time_sec();
        return -1;
    }
    ctx->preemption_user_notified = 0;
    ctx->last_preemption_retry_fail = 0;
    ctx->is_preempted = 0;
    ctx->preemption_counter++;
    MP_INFO(ctx, "Recovered from display preemption.\n");
    return 1;
}
