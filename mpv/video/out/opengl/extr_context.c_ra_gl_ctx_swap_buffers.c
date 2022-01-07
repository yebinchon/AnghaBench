
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ra_swapchain {TYPE_7__* ctx; struct priv* priv; } ;
struct TYPE_8__ {int (* swap_buffers ) (TYPE_7__*) ;} ;
struct priv {int frames_rendered; unsigned int prev_sgi_sync_count; scalar_t__ num_vsync_fences; int * vsync_fences; TYPE_3__* opts; TYPE_1__ params; TYPE_6__* gl; } ;
struct TYPE_9__ {int debug; } ;
struct TYPE_14__ {TYPE_5__* vo; int ra; TYPE_2__ opts; } ;
struct TYPE_13__ {int (* DeleteSync ) (int ) ;int (* ClientWaitSync ) (int ,int ,int) ;int (* WaitVideoSync ) (int,unsigned int,unsigned int*) ;int (* GetVideoSync ) (unsigned int*) ;} ;
struct TYPE_12__ {TYPE_4__* opts; } ;
struct TYPE_11__ {scalar_t__ swapchain_depth; } ;
struct TYPE_10__ {scalar_t__* vsync_pattern; scalar_t__ waitvsync; } ;
typedef TYPE_6__ GL ;


 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 int MP_DBG (struct priv*,char*,unsigned int,unsigned int,int) ;
 int MP_TARRAY_REMOVE_AT (int *,scalar_t__,int ) ;
 int check_pattern (struct priv*,int) ;
 int ra_gl_set_debug (int ,int) ;
 int stub1 (TYPE_7__*) ;
 int stub2 (unsigned int*) ;
 int stub3 (int,unsigned int,unsigned int*) ;
 int stub4 (int ,int ,int) ;
 int stub5 (int ) ;

void ra_gl_ctx_swap_buffers(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;
    GL *gl = p->gl;

    p->params.swap_buffers(sw->ctx);
    p->frames_rendered++;

    if (p->frames_rendered > 5 && !sw->ctx->opts.debug)
        ra_gl_set_debug(sw->ctx->ra, 0);

    if ((p->opts->waitvsync || p->opts->vsync_pattern[0])
        && gl->GetVideoSync)
    {
        unsigned int n1 = 0, n2 = 0;
        gl->GetVideoSync(&n1);
        if (p->opts->waitvsync)
            gl->WaitVideoSync(2, (n1 + 1) % 2, &n2);
        int step = n1 - p->prev_sgi_sync_count;
        p->prev_sgi_sync_count = n1;
        MP_DBG(p, "Flip counts: %u->%u, step=%d\n", n1, n2, step);
        if (p->opts->vsync_pattern[0])
            check_pattern(p, step);
    }

    while (p->num_vsync_fences >= sw->ctx->vo->opts->swapchain_depth) {
        gl->ClientWaitSync(p->vsync_fences[0], GL_SYNC_FLUSH_COMMANDS_BIT, 1e9);
        gl->DeleteSync(p->vsync_fences[0]);
        MP_TARRAY_REMOVE_AT(p->vsync_fences, p->num_vsync_fences, 0);
    }
}
