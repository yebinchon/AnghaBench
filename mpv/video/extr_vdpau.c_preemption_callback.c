
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_vdpau_ctx {int is_preempted; int preempt_lock; } ;
typedef int VdpDevice ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void preemption_callback(VdpDevice device, void *context)
{
    struct mp_vdpau_ctx *ctx = context;

    pthread_mutex_lock(&ctx->preempt_lock);
    ctx->is_preempted = 1;
    pthread_mutex_unlock(&ctx->preempt_lock);
}
