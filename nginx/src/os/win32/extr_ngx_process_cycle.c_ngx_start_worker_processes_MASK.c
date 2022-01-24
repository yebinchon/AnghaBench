#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_5__ {int /*<<< orphan*/  conf_ctx; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ ngx_cycle_t ;
struct TYPE_6__ {scalar_t__ worker_processes; } ;
typedef  TYPE_2__ ngx_core_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_INVALID_PID ; 
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  ngx_core_module ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_cycle_t *cycle, ngx_int_t type)
{
    ngx_int_t         n;
    ngx_core_conf_t  *ccf;

    FUNC1(NGX_LOG_NOTICE, cycle->log, 0, "start worker processes");

    ccf = (ngx_core_conf_t *) FUNC0(cycle->conf_ctx, ngx_core_module);

    for (n = 0; n < ccf->worker_processes; n++) {
        if (FUNC2(cycle, "worker", type) == NGX_INVALID_PID) {
            break;
        }
    }

    return n;
}