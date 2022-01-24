#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_tid_t ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;

/* Variables and functions */
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_stop_event ; 
 int /*<<< orphan*/  ngx_worker_thread ; 

void
FUNC5(ngx_cycle_t *cycle)
{
    ngx_tid_t  tid;

    FUNC2(cycle);

    if (FUNC3(cycle) != NGX_OK) {
        FUNC1(2);
    }

    if (FUNC4(&tid, ngx_worker_thread, NULL, cycle->log) != 0) {
        /* fatal */
        FUNC1(2);
    }

    /* STUB */
    FUNC0(ngx_stop_event, INFINITE);
}