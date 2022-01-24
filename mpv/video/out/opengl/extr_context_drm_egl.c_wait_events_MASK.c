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
struct priv {int /*<<< orphan*/  vt_switcher; scalar_t__ vt_switcher_active; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct ra_ctx *ctx, int64_t until_time_us)
{
    struct priv *p = ctx->priv;
    if (p->vt_switcher_active) {
        int64_t wait_us = until_time_us - FUNC1();
        int timeout_ms = FUNC0((wait_us + 500) / 1000, 0, 10000);
        FUNC3(&p->vt_switcher, timeout_ms);
    } else {
        FUNC2(ctx->vo, until_time_us);
    }
}