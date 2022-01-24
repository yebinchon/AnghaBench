#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct MPContext {TYPE_1__* clients; } ;
struct TYPE_2__ {scalar_t__ num_clients; int /*<<< orphan*/  lock; scalar_t__ render_context; int /*<<< orphan*/  gl_cb_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPContext*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(struct MPContext *mpctx)
{
    if (!mpctx->clients)
        return;
    FUNC3(mpctx->clients->num_clients == 0);

    FUNC1(&mpctx->clients->gl_cb_ctx);

    // The API user is supposed to call mpv_render_context_free(). It's simply
    // not allowed not to do this.
    if (mpctx->clients->render_context) {
        FUNC0(mpctx, "Broken API use: mpv_render_context_free() not called.\n");
        FUNC2();
    }

    FUNC4(&mpctx->clients->lock);
    FUNC5(mpctx->clients);
    mpctx->clients = NULL;
}