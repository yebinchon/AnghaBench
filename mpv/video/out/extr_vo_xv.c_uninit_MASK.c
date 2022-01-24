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
struct xvctx {int num_buffers; scalar_t__ f_gc; scalar_t__ vo_gc; int /*<<< orphan*/ * fo; int /*<<< orphan*/ * ai; int /*<<< orphan*/  original_image; } ;
struct vo {TYPE_1__* x11; struct xvctx* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  display; } ;

/* Variables and functions */
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vo*) ; 

__attribute__((used)) static void FUNC6(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;
    int i;

    FUNC4(ctx->original_image);

    if (ctx->ai)
        FUNC2(ctx->ai);
    ctx->ai = NULL;
    if (ctx->fo) {
        FUNC0(ctx->fo);
        ctx->fo = NULL;
    }
    for (i = 0; i < ctx->num_buffers; i++)
        FUNC3(vo, i);
    if (ctx->f_gc != None)
        FUNC1(vo->x11->display, ctx->f_gc);
    if (ctx->vo_gc != None)
        FUNC1(vo->x11->display, ctx->vo_gc);
    // uninit() shouldn't get called unless initialization went past vo_init()
    FUNC5(vo);
}