#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {TYPE_2__* vo; struct priv* priv; } ;
struct priv {scalar_t__ context; scalar_t__ vinfo; } ;
struct TYPE_4__ {TYPE_1__* x11; } ;
struct TYPE_3__ {int /*<<< orphan*/ * display; } ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  None ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    FUNC3(ctx);

    if (p->vinfo)
        FUNC0(p->vinfo);
    if (p->context) {
        Display *display = ctx->vo->x11->display;
        FUNC2(display, None, NULL);
        FUNC1(display, p->context);
    }

    FUNC4(ctx->vo);
}