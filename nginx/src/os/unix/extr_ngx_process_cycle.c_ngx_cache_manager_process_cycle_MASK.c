#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void** data; int /*<<< orphan*/  log; int /*<<< orphan*/  handler; } ;
typedef  TYPE_1__ ngx_event_t ;
struct TYPE_12__ {int connection_n; int /*<<< orphan*/  log; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_13__ {int /*<<< orphan*/  delay; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
typedef  TYPE_3__ ngx_cache_manager_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_NOTICE ; 
 int /*<<< orphan*/  NGX_PROCESS_HELPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  ngx_process ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ ngx_quit ; 
 scalar_t__ ngx_reopen ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ ngx_terminate ; 
 scalar_t__ ngx_use_accept_mutex ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC9(ngx_cycle_t *cycle, void *data)
{
    ngx_cache_manager_ctx_t *ctx = data;

    void         *ident[4];
    ngx_event_t   ev;

    /*
     * Set correct process type since closing listening Unix domain socket
     * in a master process also removes the Unix domain socket file.
     */
    ngx_process = NGX_PROCESS_HELPER;

    FUNC2(cycle);

    /* Set a moderate number of connections for a helper process. */
    cycle->connection_n = 512;

    FUNC8(cycle, -1);

    FUNC4(&ev, sizeof(ngx_event_t));
    ev.handler = ctx->handler;
    ev.data = ident;
    ev.log = cycle->log;
    ident[3] = (void *) -1;

    ngx_use_accept_mutex = 0;

    FUNC7(ctx->name);

    FUNC1(&ev, ctx->delay);

    for ( ;; ) {

        if (ngx_terminate || ngx_quit) {
            FUNC3(NGX_LOG_NOTICE, cycle->log, 0, "exiting");
            FUNC0(0);
        }

        if (ngx_reopen) {
            ngx_reopen = 0;
            FUNC3(NGX_LOG_NOTICE, cycle->log, 0, "reopening logs");
            FUNC6(cycle, -1);
        }

        FUNC5(cycle);
    }
}