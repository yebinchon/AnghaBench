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
struct priv {scalar_t__ os_wnd; scalar_t__ os_dc; scalar_t__ os_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (p->os_ctx) {
        FUNC3(p->os_dc, NULL);
        FUNC2(p->os_ctx);
    }
    if (p->os_dc)
        FUNC1(p->os_wnd, p->os_dc);
    if (p->os_wnd)
        FUNC0(p->os_wnd);
}