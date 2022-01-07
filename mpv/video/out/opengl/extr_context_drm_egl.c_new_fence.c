
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct TYPE_2__ {scalar_t__ (* FenceSync ) (int ,int ) ;} ;
struct priv {int num_vsync_fences; int vsync_fences; TYPE_1__ gl; } ;
typedef scalar_t__ GLsync ;


 int GL_SYNC_GPU_COMMANDS_COMPLETE ;
 int MP_TARRAY_APPEND (struct priv*,int ,int ,scalar_t__) ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static void new_fence(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->gl.FenceSync) {
        GLsync fence = p->gl.FenceSync(GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
        if (fence)
            MP_TARRAY_APPEND(p, p->vsync_fences, p->num_vsync_fences, fence);
    }
}
