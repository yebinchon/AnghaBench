#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_msec_t ;
struct TYPE_6__ {int /*<<< orphan*/  threads; } ;
typedef  TYPE_1__ ngx_iocp_conf_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; int /*<<< orphan*/  conf_ctx; } ;
typedef  TYPE_2__ ngx_cycle_t ;
struct TYPE_8__ {int /*<<< orphan*/  actions; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_USE_IOCP_EVENT ; 
 int /*<<< orphan*/  NGX_USE_TIMER_EVENT ; 
 int /*<<< orphan*/ * iocp ; 
 scalar_t__ msec ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  ngx_event_actions ; 
 int /*<<< orphan*/  ngx_event_flags ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_io ; 
 int /*<<< orphan*/  ngx_iocp_io ; 
 int /*<<< orphan*/  ngx_iocp_module ; 
 TYPE_3__ ngx_iocp_module_ctx ; 
 int /*<<< orphan*/  ngx_iocp_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * timer_thread ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_cycle_t *cycle, ngx_msec_t timer)
{
    ngx_iocp_conf_t  *cf;

    cf = FUNC2(cycle->conf_ctx, ngx_iocp_module);

    if (iocp == NULL) {
        iocp = FUNC0(INVALID_HANDLE_VALUE, NULL, 0,
                                      cf->threads);
    }

    if (iocp == NULL) {
        FUNC3(NGX_LOG_ALERT, cycle->log, ngx_errno,
                      "CreateIoCompletionPort() failed");
        return NGX_ERROR;
    }

    ngx_io = ngx_iocp_io;

    ngx_event_actions = ngx_iocp_module_ctx.actions;

    ngx_event_flags = NGX_USE_IOCP_EVENT;

    if (timer == 0) {
        return NGX_OK;
    }

    /*
     * The waitable timer could not be used, because
     * GetQueuedCompletionStatus() does not set a thread to alertable state
     */

    if (timer_thread == NULL) {

        msec = timer;

        if (FUNC1(&timer_thread, ngx_iocp_timer, &msec, cycle->log)
            != 0)
        {
            return NGX_ERROR;
        }
    }

    ngx_event_flags |= NGX_USE_TIMER_EVENT;

    return NGX_OK;
}