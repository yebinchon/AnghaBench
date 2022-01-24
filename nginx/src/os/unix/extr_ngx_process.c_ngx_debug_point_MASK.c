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
struct TYPE_3__ {int debug_points; } ;
typedef  TYPE_1__ ngx_core_conf_t ;
struct TYPE_4__ {int /*<<< orphan*/  conf_ctx; } ;

/* Variables and functions */
#define  NGX_DEBUG_POINTS_ABORT 129 
#define  NGX_DEBUG_POINTS_STOP 128 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ngx_core_module ; 
 TYPE_2__* ngx_cycle ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
    ngx_core_conf_t  *ccf;

    ccf = (ngx_core_conf_t *) FUNC1(ngx_cycle->conf_ctx,
                                           ngx_core_module);

    switch (ccf->debug_points) {

    case NGX_DEBUG_POINTS_STOP:
        FUNC2(SIGSTOP);
        break;

    case NGX_DEBUG_POINTS_ABORT:
        FUNC0();
    }
}