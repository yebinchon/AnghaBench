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
struct ra_ctx {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  hdc; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *ptr)
{
    struct ra_ctx *ctx = ptr;
    struct priv *p = ctx->priv;

    if (!FUNC2(ctx))
        return;

    FUNC0(ctx);
    if (!p->context)
        FUNC1(ctx);

    FUNC3(p->hdc, NULL);
}