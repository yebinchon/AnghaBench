#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo_priv {struct mpv_render_context* ctx; } ;
struct vo {struct vo_priv* priv; } ;
struct mp_image_params {int dummy; } ;
struct mpv_render_context {int need_reconfig; int need_resize; int /*<<< orphan*/  lock; struct mp_image_params img_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOCTRL_RECONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mpv_render_context*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vo *vo, struct mp_image_params *params)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;

    FUNC2(&ctx->lock);
    FUNC1(ctx, true);
    ctx->img_params = *params;
    ctx->need_reconfig = true;
    ctx->need_resize = true;
    FUNC3(&ctx->lock);

    FUNC0(vo, VOCTRL_RECONFIG, NULL);

    return 0;
}