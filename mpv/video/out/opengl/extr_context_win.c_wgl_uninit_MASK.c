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
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  hdc; scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  destroy_gl ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    FUNC1(ctx);
    if (p->context)
        FUNC4(p->hdc, 0);
    FUNC2(ctx->vo, destroy_gl, ctx);

    FUNC0(FALSE);
    FUNC3(ctx->vo);
}