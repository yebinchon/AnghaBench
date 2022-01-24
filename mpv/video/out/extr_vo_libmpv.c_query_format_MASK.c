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
struct mpv_render_context {int* imgfmt_supported; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IMGFMT_END ; 
 int IMGFMT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct vo *vo, int format)
{
    struct vo_priv *p = vo->priv;
    struct mpv_render_context *ctx = p->ctx;

    bool ok = false;
    FUNC0(&ctx->lock);
    if (format >= IMGFMT_START && format < IMGFMT_END)
        ok = ctx->imgfmt_supported[format - IMGFMT_START];
    FUNC1(&ctx->lock);
    return ok;
}