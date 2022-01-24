#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  handler; int /*<<< orphan*/  log; TYPE_1__* data; } ;
struct TYPE_8__ {scalar_t__ respawn_timeout; TYPE_7__ respawn_evt; int /*<<< orphan*/  log; scalar_t__ pid; } ;
typedef  TYPE_1__ ngx_rtmp_exec_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_9__ {TYPE_3__* data; } ;
typedef  TYPE_2__ ngx_event_t ;
struct TYPE_10__ {TYPE_1__* data; } ;
typedef  TYPE_3__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_CONF_UNSET_MSEC ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_exec_respawn ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(ngx_event_t *ev)
{
    ngx_connection_t   *dummy_conn = ev->data;
    ngx_rtmp_exec_t    *e;

    e = dummy_conn->data;

    FUNC2(NGX_LOG_INFO, e->log, 0,
                  "exec: child %ui exited; %s", (ngx_int_t) e->pid,
                  e->respawn_timeout == NGX_CONF_UNSET_MSEC ? "respawning" :
                                                               "ignoring");

    FUNC3(e, 0);

    if (e->respawn_timeout == NGX_CONF_UNSET_MSEC) {
        return;
    }

    if (e->respawn_timeout == 0) {
        FUNC4(e);
        return;
    }

    FUNC1(NGX_LOG_DEBUG_RTMP, e->log, 0,
                   "exec: shedule respawn %Mmsec", e->respawn_timeout);

    e->respawn_evt.data = e;
    e->respawn_evt.log = e->log;
    e->respawn_evt.handler = ngx_rtmp_exec_respawn;

    FUNC0(&e->respawn_evt, e->respawn_timeout);
}