#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  size_t ssize_t ;
struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_9__ {int active; int error; size_t available; scalar_t__ ready; TYPE_1__ ovlp; scalar_t__ complete; } ;
typedef  TYPE_2__ ngx_event_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_10__ {size_t sent; int /*<<< orphan*/  fd; int /*<<< orphan*/  log; TYPE_2__* write; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  WSAOVERLAPPED ;
struct TYPE_11__ {char* buf; size_t len; } ;
typedef  TYPE_4__ WSABUF ;
typedef  scalar_t__ LPWSAOVERLAPPED ;

/* Variables and functions */
 size_t NGX_AGAIN ; 
 size_t NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int NGX_USE_IOCP_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int,size_t*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ WSA_IO_PENDING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__,char*) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 scalar_t__ ngx_socket_errno ; 

ssize_t
FUNC8(ngx_connection_t *c, u_char *buf, size_t size)
{
    int               n;
    u_long            sent;
    ngx_err_t         err;
    ngx_event_t      *wev;
    LPWSAOVERLAPPED   ovlp;
    WSABUF            wsabuf;

    wev = c->write;

    if (!wev->ready) {
        return NGX_AGAIN;
    }

    FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "wev->complete: %d", wev->complete);

    if (!wev->complete) {

        /* post the overlapped WSASend() */

        /*
         * WSABUFs must be 4-byte aligned otherwise
         * WSASend() will return undocumented WSAEINVAL error.
         */

        wsabuf.buf = (char *) buf;
        wsabuf.len = size;

        sent = 0;

        ovlp = (LPWSAOVERLAPPED) &c->write->ovlp;
        FUNC7(ovlp, sizeof(WSAOVERLAPPED));

        n = FUNC1(c->fd, &wsabuf, 1, &sent, 0, ovlp, NULL);

        FUNC6(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "WSASend: fd:%d, %d, %ul of %uz", c->fd, n, sent, size);

        wev->complete = 0;

        if (n == 0) {
            if (ngx_event_flags & NGX_USE_IOCP_EVENT) {

                /*
                 * if a socket was bound with I/O completion port then
                 * GetQueuedCompletionStatus() would anyway return its status
                 * despite that WSASend() was already complete
                 */

                wev->active = 1;
                return NGX_AGAIN;
            }

            if (sent < size) {
                wev->ready = 0;
            }

            c->sent += sent;

            return sent;
        }

        err = ngx_socket_errno;

        if (err == WSA_IO_PENDING) {
            FUNC3(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "WSASend() posted");
            wev->active = 1;
            return NGX_AGAIN;
        }

        wev->error = 1;
        FUNC2(c, err, "WSASend() failed");

        return NGX_ERROR;
    }

    /* the overlapped WSASend() complete */

    wev->complete = 0;
    wev->active = 0;

    if (ngx_event_flags & NGX_USE_IOCP_EVENT) {

        if (wev->ovlp.error) {
            FUNC2(c, wev->ovlp.error, "WSASend() failed");
            return NGX_ERROR;
        }

        sent = wev->available;

    } else {
        if (FUNC0(c->fd, (LPWSAOVERLAPPED) &wev->ovlp,
                                   &sent, 0, NULL)
            == 0)
        {
            FUNC2(c, ngx_socket_errno,
                           "WSASend() or WSAGetOverlappedResult() failed");

            return NGX_ERROR;
        }
    }

    FUNC5(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "WSAGetOverlappedResult: fd:%d, %ul of %uz",
                   c->fd, sent, size);

    if (sent < size) {
        wev->ready = 0;
    }

    c->sent += sent;

    return sent;
}