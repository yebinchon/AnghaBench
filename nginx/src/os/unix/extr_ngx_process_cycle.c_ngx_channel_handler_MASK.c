#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; TYPE_2__* data; scalar_t__ timedout; } ;
typedef  TYPE_1__ ngx_event_t ;
struct TYPE_11__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_12__ {scalar_t__ command; size_t slot; int fd; int /*<<< orphan*/  pid; } ;
typedef  TYPE_3__ ngx_channel_t ;
struct TYPE_13__ {int* channel; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
#define  NGX_CMD_CLOSE_CHANNEL 132 
#define  NGX_CMD_OPEN_CHANNEL 131 
#define  NGX_CMD_QUIT 130 
#define  NGX_CMD_REOPEN 129 
#define  NGX_CMD_TERMINATE 128 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int NGX_USE_EPOLL_EVENT ; 
 int NGX_USE_EVENTPORT_EVENT ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_errno ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_5__* ngx_processes ; 
 int ngx_quit ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int ngx_reopen ; 
 int ngx_terminate ; 

__attribute__((used)) static void
FUNC10(ngx_event_t *ev)
{
    ngx_int_t          n;
    ngx_channel_t      ch;
    ngx_connection_t  *c;

    if (ev->timedout) {
        ev->timedout = 0;
        return;
    }

    c = ev->data;

    FUNC4(NGX_LOG_DEBUG_CORE, ev->log, 0, "channel handler");

    for ( ;; ) {

        n = FUNC9(c->fd, &ch, sizeof(ngx_channel_t), ev->log);

        FUNC5(NGX_LOG_DEBUG_CORE, ev->log, 0, "channel: %i", n);

        if (n == NGX_ERROR) {

            if (ngx_event_flags & NGX_USE_EPOLL_EVENT) {
                FUNC3(c, 0);
            }

            FUNC2(c);
            return;
        }

        if (ngx_event_flags & NGX_USE_EVENTPORT_EVENT) {
            if (FUNC1(ev, NGX_READ_EVENT, 0) == NGX_ERROR) {
                return;
            }
        }

        if (n == NGX_AGAIN) {
            return;
        }

        FUNC5(NGX_LOG_DEBUG_CORE, ev->log, 0,
                       "channel command: %ui", ch.command);

        switch (ch.command) {

        case NGX_CMD_QUIT:
            ngx_quit = 1;
            break;

        case NGX_CMD_TERMINATE:
            ngx_terminate = 1;
            break;

        case NGX_CMD_REOPEN:
            ngx_reopen = 1;
            break;

        case NGX_CMD_OPEN_CHANNEL:

            FUNC6(NGX_LOG_DEBUG_CORE, ev->log, 0,
                           "get channel s:%i pid:%P fd:%d",
                           ch.slot, ch.pid, ch.fd);

            ngx_processes[ch.slot].pid = ch.pid;
            ngx_processes[ch.slot].channel[0] = ch.fd;
            break;

        case NGX_CMD_CLOSE_CHANNEL:

            FUNC7(NGX_LOG_DEBUG_CORE, ev->log, 0,
                           "close channel s:%i pid:%P our:%P fd:%d",
                           ch.slot, ch.pid, ngx_processes[ch.slot].pid,
                           ngx_processes[ch.slot].channel[0]);

            if (FUNC0(ngx_processes[ch.slot].channel[0]) == -1) {
                FUNC8(NGX_LOG_ALERT, ev->log, ngx_errno,
                              "close() channel failed");
            }

            ngx_processes[ch.slot].channel[0] = -1;
            break;
        }
    }
}