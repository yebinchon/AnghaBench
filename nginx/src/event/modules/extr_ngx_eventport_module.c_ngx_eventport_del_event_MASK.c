#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_4__ {uintptr_t instance; scalar_t__ oneshot; scalar_t__ active; int /*<<< orphan*/  log; TYPE_2__* data; } ;
typedef  TYPE_1__ ngx_event_t ;
struct TYPE_5__ {int /*<<< orphan*/  fd; TYPE_1__* read; TYPE_1__* write; } ;
typedef  TYPE_2__ ngx_connection_t ;

/* Variables and functions */
 int NGX_CLOSE_EVENT ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  PORT_SOURCE_FD ; 
 int /*<<< orphan*/  ep ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_event_t       *e;
    ngx_connection_t  *c;

    /*
     * when the file descriptor is closed, the event port automatically
     * dissociates it from the port, so we do not need to dissociate explicitly
     * the event before the closing the file descriptor
     */

    if (flags & NGX_CLOSE_EVENT) {
        ev->active = 0;
        ev->oneshot = 0;
        return NGX_OK;
    }

    c = ev->data;

    if (event == NGX_READ_EVENT) {
        e = c->write;
        event = POLLOUT;

    } else {
        e = c->read;
        event = POLLIN;
    }

    if (e->oneshot) {
        FUNC1(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "eventport change event: fd:%d ev:%04Xi", c->fd, event);

        if (FUNC3(ep, PORT_SOURCE_FD, c->fd, event,
                           (void *) ((uintptr_t) ev | ev->instance))
            == -1)
        {
            FUNC2(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "port_associate() failed");
            return NGX_ERROR;
        }

    } else {
        FUNC0(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "eventport del event: fd:%d", c->fd);

        if (FUNC4(ep, PORT_SOURCE_FD, c->fd) == -1) {
            FUNC2(NGX_LOG_ALERT, ev->log, ngx_errno,
                          "port_dissociate() failed");
            return NGX_ERROR;
        }
    }

    ev->active = 0;
    ev->oneshot = 0;

    return NGX_OK;
}