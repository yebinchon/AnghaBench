#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ssize_t ;
struct TYPE_7__ {int error; scalar_t__ ready; } ;
typedef  TYPE_1__ ngx_event_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_8__ {size_t sent; int /*<<< orphan*/  log; int /*<<< orphan*/  fd; TYPE_1__* write; } ;
typedef  TYPE_2__ ngx_connection_t ;
struct TYPE_9__ {char* buf; size_t len; } ;
typedef  TYPE_3__ WSABUF ;

/* Variables and functions */
 size_t NGX_AGAIN ; 
 size_t NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,size_t,size_t) ; 
 scalar_t__ ngx_socket_errno ; 

ssize_t
FUNC4(ngx_connection_t *c, u_char *buf, size_t size)
{
    int           n;
    u_long        sent;
    ngx_err_t     err;
    ngx_event_t  *wev;
    WSABUF        wsabuf;

    wev = c->write;

    if (!wev->ready) {
        return NGX_AGAIN;
    }

    /*
     * WSABUF must be 4-byte aligned otherwise
     * WSASend() will return undocumented WSAEINVAL error.
     */

    wsabuf.buf = (char *) buf;
    wsabuf.len = size;

    sent = 0;

    n = FUNC0(c->fd, &wsabuf, 1, &sent, 0, NULL, NULL);

    FUNC3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "WSASend: fd:%d, %d, %ul of %uz", c->fd, n, sent, size);

    if (n == 0) {
        if (sent < size) {
            wev->ready = 0;
        }

        c->sent += sent;

        return sent;
    }

    err = ngx_socket_errno;

    if (err == WSAEWOULDBLOCK) {
        FUNC2(NGX_LOG_DEBUG_EVENT, c->log, err, "WSASend() not ready");
        wev->ready = 0;
        return NGX_AGAIN;
    }

    wev->error = 1;
    FUNC1(c, err, "WSASend() failed");

    return NGX_ERROR;
}