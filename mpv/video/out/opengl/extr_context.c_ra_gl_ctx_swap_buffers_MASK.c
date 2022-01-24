#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ra_swapchain {TYPE_7__* ctx; struct priv* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* swap_buffers ) (TYPE_7__*) ;} ;
struct priv {int frames_rendered; unsigned int prev_sgi_sync_count; scalar_t__ num_vsync_fences; int /*<<< orphan*/ * vsync_fences; TYPE_3__* opts; TYPE_1__ params; TYPE_6__* gl; } ;
struct TYPE_9__ {int /*<<< orphan*/  debug; } ;
struct TYPE_14__ {TYPE_5__* vo; int /*<<< orphan*/  ra; TYPE_2__ opts; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* DeleteSync ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ClientWaitSync ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* WaitVideoSync ) (int,unsigned int,unsigned int*) ;int /*<<< orphan*/  (* GetVideoSync ) (unsigned int*) ;} ;
struct TYPE_12__ {TYPE_4__* opts; } ;
struct TYPE_11__ {scalar_t__ swapchain_depth; } ;
struct TYPE_10__ {scalar_t__* vsync_pattern; scalar_t__ waitvsync; } ;
typedef  TYPE_6__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_SYNC_FLUSH_COMMANDS_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct priv*,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;
    GL *gl = p->gl;

    p->params.swap_buffers(sw->ctx);
    p->frames_rendered++;

    if (p->frames_rendered > 5 && !sw->ctx->opts.debug)
        FUNC3(sw->ctx->ra, false);

    if ((p->opts->waitvsync || p->opts->vsync_pattern[0])
        && gl->GetVideoSync)
    {
        unsigned int n1 = 0, n2 = 0;
        gl->GetVideoSync(&n1);
        if (p->opts->waitvsync)
            gl->WaitVideoSync(2, (n1 + 1) % 2, &n2);
        int step = n1 - p->prev_sgi_sync_count;
        p->prev_sgi_sync_count = n1;
        FUNC0(p, "Flip counts: %u->%u, step=%d\n", n1, n2, step);
        if (p->opts->vsync_pattern[0])
            FUNC2(p, step);
    }

    while (p->num_vsync_fences >= sw->ctx->vo->opts->swapchain_depth) {
        gl->ClientWaitSync(p->vsync_fences[0], GL_SYNC_FLUSH_COMMANDS_BIT, 1e9);
        gl->DeleteSync(p->vsync_fences[0]);
        FUNC1(p->vsync_fences, p->num_vsync_fences, 0);
    }
}