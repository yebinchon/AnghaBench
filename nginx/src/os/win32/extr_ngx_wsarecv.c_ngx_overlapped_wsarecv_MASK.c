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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_9__ {int ready; scalar_t__ available; int active; int error; int eof; scalar_t__ complete; TYPE_1__ ovlp; } ;
typedef  TYPE_2__ ngx_event_t ;
typedef  scalar_t__ ngx_err_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; int /*<<< orphan*/  fd; TYPE_2__* read; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  WSAOVERLAPPED ;
struct TYPE_11__ {char* buf; size_t len; } ;
typedef  TYPE_4__ WSABUF ;
typedef  scalar_t__ LPWSAOVERLAPPED ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_EVENT ; 
 int NGX_USE_IOCP_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int,scalar_t__*,scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ WSA_IO_PENDING ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__,char*) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ ngx_socket_errno ; 

ssize_t
FUNC9(ngx_connection_t *c, u_char *buf, size_t size)
{
    int               rc;
    u_long            bytes, flags;
    WSABUF            wsabuf[1];
    ngx_err_t         err;
    ngx_int_t         n;
    ngx_event_t      *rev;
    LPWSAOVERLAPPED   ovlp;

    rev = c->read;

    if (!rev->ready) {
        FUNC7(NGX_LOG_ALERT, c->log, 0, "second wsa post");
        return NGX_AGAIN;
    }

    FUNC4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rev->complete: %d", rev->complete);

    if (rev->complete) {
        rev->complete = 0;

        if (ngx_event_flags & NGX_USE_IOCP_EVENT) {
            if (rev->ovlp.error) {
                FUNC2(c, rev->ovlp.error, "WSARecv() failed");
                return NGX_ERROR;
            }

            FUNC5(NGX_LOG_DEBUG_EVENT, c->log, 0,
                           "WSARecv ovlp: fd:%d %ul of %z",
                           c->fd, rev->available, size);

            return rev->available;
        }

        if (FUNC0(c->fd, (LPWSAOVERLAPPED) &rev->ovlp,
                                   &bytes, 0, NULL)
            == 0)
        {
            FUNC2(c, ngx_socket_errno,
                               "WSARecv() or WSAGetOverlappedResult() failed");
            return NGX_ERROR;
        }

        FUNC5(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "WSARecv: fd:%d %ul of %z", c->fd, bytes, size);

        return bytes;
    }

    ovlp = (LPWSAOVERLAPPED) &rev->ovlp;
    FUNC8(ovlp, sizeof(WSAOVERLAPPED));
    wsabuf[0].buf = (char *) buf;
    wsabuf[0].len = size;
    flags = 0;
    bytes = 0;

    rc = FUNC1(c->fd, wsabuf, 1, &bytes, &flags, ovlp, NULL);

    rev->complete = 0;

    FUNC6(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "WSARecv ovlp: fd:%d rc:%d %ul of %z",
                   c->fd, rc, bytes, size);

    if (rc == -1) {
        err = ngx_socket_errno;
        if (err == WSA_IO_PENDING) {
            rev->active = 1;
            FUNC3(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "WSARecv() posted");
            return NGX_AGAIN;
        }

        n = FUNC2(c, err, "WSARecv() failed");

        if (n == NGX_ERROR) {
            rev->error = 1;
        }

        return n;
    }

    if (ngx_event_flags & NGX_USE_IOCP_EVENT) {

        /*
         * if a socket was bound with I/O completion port
         * then GetQueuedCompletionStatus() would anyway return its status
         * despite that WSARecv() was already complete
         */

        rev->active = 1;
        return NGX_AGAIN;
    }

    if (bytes == 0) {
        rev->eof = 1;
        rev->ready = 0;

    } else {
        rev->ready = 1;
    }

    rev->active = 0;

    return bytes;
}