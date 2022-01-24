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
struct priv {int /*<<< orphan*/ * hdc; scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * current_wgl_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(void *ptr)
{
    struct ra_ctx *ctx = ptr;
    struct priv *p = ctx->priv;
    if (p->context)
        FUNC2(p->context);
    p->context = 0;
    if (p->hdc)
        FUNC0(FUNC1(ctx->vo), p->hdc);
    p->hdc = NULL;
    current_wgl_context = NULL;
}