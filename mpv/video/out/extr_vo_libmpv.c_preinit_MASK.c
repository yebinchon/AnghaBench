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
struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {int /*<<< orphan*/  hwdec_devs; int /*<<< orphan*/  probing; TYPE_1__* global; struct vo_priv* priv; } ;
struct mpv_render_context {int need_resize; int need_update_external; int /*<<< orphan*/  hwdec_devs; int /*<<< orphan*/  lock; struct vo* vo; } ;
struct TYPE_2__ {int /*<<< orphan*/  client_api; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  VOCTRL_PREINIT ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpv_render_context* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct vo *vo)
{
    struct vo_priv *p = vo->priv;

    struct mpv_render_context *ctx =
        FUNC2(vo->global->client_api);
    p->ctx = ctx;

    if (!ctx) {
        if (!vo->probing)
            FUNC0(vo, "No render context set.\n");
        return -1;
    }

    FUNC3(&ctx->lock);
    ctx->vo = vo;
    ctx->need_resize = true;
    ctx->need_update_external = true;
    FUNC4(&ctx->lock);

    vo->hwdec_devs = ctx->hwdec_devs;
    FUNC1(vo, VOCTRL_PREINIT, NULL);

    return 0;
}