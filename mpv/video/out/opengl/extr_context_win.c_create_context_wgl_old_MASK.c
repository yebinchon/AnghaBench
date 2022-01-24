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
struct priv {scalar_t__ context; int /*<<< orphan*/  hdc; } ;
typedef  scalar_t__ HGLRC ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    HDC windc = p->hdc;
    bool res = false;

    HGLRC context = FUNC1(windc);
    if (!context) {
        FUNC0(ctx->vo, "Could not create GL context!\n");
        return res;
    }

    if (!FUNC3(windc, context)) {
        FUNC0(ctx->vo, "Could not set GL context!\n");
        FUNC2(context);
        return res;
    }

    p->context = context;
    return true;
}