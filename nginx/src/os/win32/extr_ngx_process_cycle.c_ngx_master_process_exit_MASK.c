#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ngx_uint_t ;
struct TYPE_7__ {int /*<<< orphan*/  pool; TYPE_1__** modules; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* exit_master ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_cache_manager_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_master_process_event ; 
 int /*<<< orphan*/  ngx_quit_event ; 
 int /*<<< orphan*/  ngx_reload_event ; 
 int /*<<< orphan*/  ngx_reopen_event ; 
 int /*<<< orphan*/  ngx_stop_event ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(ngx_cycle_t *cycle)
{
    ngx_uint_t  i;

    FUNC2(cycle);

    FUNC1(ngx_cache_manager_mutex);
    FUNC1(ngx_stop_event);
    FUNC1(ngx_quit_event);
    FUNC1(ngx_reopen_event);
    FUNC1(ngx_reload_event);
    FUNC1(ngx_master_process_event);

    FUNC4(NGX_LOG_NOTICE, cycle->log, 0, "exit");

    for (i = 0; cycle->modules[i]; i++) {
        if (cycle->modules[i]->exit_master) {
            cycle->modules[i]->exit_master(cycle);
        }
    }

    FUNC3(cycle->pool);

    FUNC0(0);
}