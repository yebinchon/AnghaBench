
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct TYPE_4__ {int (* DeleteSync ) (int ) ;int (* ClientWaitSync ) (int ,int ,int) ;} ;
struct TYPE_3__ {scalar_t__ num_bos; } ;
struct priv {scalar_t__ num_vsync_fences; int * vsync_fences; TYPE_2__ gl; TYPE_1__ gbm; } ;


 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 int MP_TARRAY_REMOVE_AT (int *,scalar_t__,int ) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ) ;

__attribute__((used)) static void wait_fence(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    while (p->num_vsync_fences && (p->num_vsync_fences >= p->gbm.num_bos)) {
        p->gl.ClientWaitSync(p->vsync_fences[0], GL_SYNC_FLUSH_COMMANDS_BIT, 1e9);
        p->gl.DeleteSync(p->vsync_fences[0]);
        MP_TARRAY_REMOVE_AT(p->vsync_fences, p->num_vsync_fences, 0);
    }
}
