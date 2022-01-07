
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvctx {int Shm_Warned_Slow; scalar_t__ Shmem_Flag; } ;
struct vo_x11_state {int ShmCompletionWaitCount; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;


 int MP_WARN (struct vo*,char*) ;
 int mp_sleep_us (int) ;
 int vo_x11_check_events (struct vo*) ;

__attribute__((used)) static void wait_for_completion(struct vo *vo, int max_outstanding)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;
    if (ctx->Shmem_Flag) {
        while (x11->ShmCompletionWaitCount > max_outstanding) {
            if (!ctx->Shm_Warned_Slow) {
                MP_WARN(vo, "X11 can't keep up! Waiting"
                        " for XShm completion events...\n");
                ctx->Shm_Warned_Slow = 1;
            }
            mp_sleep_us(1000);
            vo_x11_check_events(vo);
        }
    }
}
