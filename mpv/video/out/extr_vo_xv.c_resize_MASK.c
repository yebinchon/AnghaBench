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
struct xvctx {int /*<<< orphan*/  src_rect; int /*<<< orphan*/  dst_rect; } ;
struct vo {int want_redraw; int /*<<< orphan*/  input_ctx; struct xvctx* priv; } ;
struct mp_osd_res {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mp_osd_res*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;

    // Can't be used, because the function calculates screen-space coordinates,
    // while we need video-space.
    struct mp_osd_res unused;

    FUNC2(vo, &ctx->src_rect, &ctx->dst_rect, &unused);

    FUNC3(vo, &ctx->dst_rect);
    FUNC4(vo, &ctx->dst_rect);
    FUNC1(vo);

    FUNC0(vo->input_ctx, &ctx->dst_rect, &ctx->src_rect);

    vo->want_redraw = true;
}