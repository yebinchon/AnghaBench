#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ active; } ;
struct TYPE_6__ {scalar_t__ timer_set; } ;
struct TYPE_5__ {scalar_t__ active; scalar_t__ pid; int /*<<< orphan*/  log; int /*<<< orphan*/ * save_pid; int /*<<< orphan*/  pipefd; TYPE_4__ read_evt; TYPE_3__ respawn_evt; } ;
typedef  TYPE_1__ ngx_rtmp_exec_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_INVALID_PID ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_rtmp_exec_t *e, ngx_int_t kill_signal)
{
    if (e->respawn_evt.timer_set) {
        FUNC3(&e->respawn_evt);
    }

    if (e->read_evt.active) {
        FUNC2(&e->read_evt, NGX_READ_EVENT, 0);
    }

    if (e->active == 0) {
        return NGX_OK;
    }

    FUNC5(NGX_LOG_INFO, e->log, 0,
                  "exec: terminating child %ui", (ngx_int_t) e->pid);

    e->active = 0;
    FUNC0(e->pipefd);
    if (e->save_pid) {
        *e->save_pid = NGX_INVALID_PID;
    }

    if (kill_signal == 0) {
        return NGX_OK;
    }

    if (FUNC1(e->pid, kill_signal) == -1) {
        FUNC5(NGX_LOG_INFO, e->log, ngx_errno,
                      "exec: kill failed pid=%i", (ngx_int_t) e->pid);
    } else {
        FUNC4(NGX_LOG_DEBUG_RTMP, e->log, 0,
                       "exec: killed pid=%i", (ngx_int_t) e->pid);
    }

    return NGX_OK;
}