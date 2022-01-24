#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_int_t ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;
struct TYPE_5__ {int exiting; int /*<<< orphan*/ * handle; int /*<<< orphan*/ * term; int /*<<< orphan*/ * quit; int /*<<< orphan*/ * reopen; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_errno ; 
 size_t ngx_last_process ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* ngx_processes ; 

__attribute__((used)) static void
FUNC3(ngx_cycle_t *cycle)
{
    ngx_int_t  n;

    for (n = 0; n < ngx_last_process; n++) {

        if (ngx_processes[n].handle == NULL) {
            continue;
        }

        if (FUNC0(ngx_processes[n].handle, 0) == 0) {
            FUNC2(NGX_LOG_ALERT, cycle->log, ngx_errno,
                          "TerminateProcess(\"%p\") failed",
                          ngx_processes[n].handle);
        }

        ngx_processes[n].exiting = 1;

        FUNC1(ngx_processes[n].reopen);
        FUNC1(ngx_processes[n].quit);
        FUNC1(ngx_processes[n].term);
        FUNC1(ngx_processes[n].handle);
    }
}