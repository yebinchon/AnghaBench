#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ra_swapchain {struct priv* priv; } ;
struct priv {TYPE_1__* opts; int /*<<< orphan*/  swapchain; int /*<<< orphan*/  last_submit_qpc; } ;
struct TYPE_5__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_4__ {int /*<<< orphan*/  sync_interval; } ;
typedef  TYPE_2__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct ra_swapchain *sw)
{
    struct priv *p = sw->priv;

    LARGE_INTEGER perf_count;
    FUNC1(&perf_count);
    p->last_submit_qpc = perf_count.QuadPart;

    FUNC0(p->swapchain, p->opts->sync_interval, 0);
}