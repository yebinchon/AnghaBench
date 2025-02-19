
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_9__ {int ready; scalar_t__ available; int active; int error; int eof; scalar_t__ complete; TYPE_1__ ovlp; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_10__ {int log; int fd; TYPE_2__* read; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int WSAOVERLAPPED ;
struct TYPE_11__ {char* buf; size_t len; } ;
typedef TYPE_4__ WSABUF ;
typedef scalar_t__ LPWSAOVERLAPPED ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_USE_IOCP_EVENT ;
 scalar_t__ WSAGetOverlappedResult (int ,scalar_t__,scalar_t__*,int ,int *) ;
 int WSARecv (int ,TYPE_4__*,int,scalar_t__*,scalar_t__*,scalar_t__,int *) ;
 scalar_t__ WSA_IO_PENDING ;
 scalar_t__ ngx_connection_error (TYPE_3__*,scalar_t__,char*) ;
 int ngx_event_flags ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,size_t) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int,scalar_t__,size_t) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memzero (scalar_t__,int) ;
 scalar_t__ ngx_socket_errno ;

ssize_t
ngx_overlapped_wsarecv(ngx_connection_t *c, u_char *buf, size_t size)
{
    int rc;
    u_long bytes, flags;
    WSABUF wsabuf[1];
    ngx_err_t err;
    ngx_int_t n;
    ngx_event_t *rev;
    LPWSAOVERLAPPED ovlp;

    rev = c->read;

    if (!rev->ready) {
        ngx_log_error(NGX_LOG_ALERT, c->log, 0, "second wsa post");
        return NGX_AGAIN;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "rev->complete: %d", rev->complete);

    if (rev->complete) {
        rev->complete = 0;

        if (ngx_event_flags & NGX_USE_IOCP_EVENT) {
            if (rev->ovlp.error) {
                ngx_connection_error(c, rev->ovlp.error, "WSARecv() failed");
                return NGX_ERROR;
            }

            ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                           "WSARecv ovlp: fd:%d %ul of %z",
                           c->fd, rev->available, size);

            return rev->available;
        }

        if (WSAGetOverlappedResult(c->fd, (LPWSAOVERLAPPED) &rev->ovlp,
                                   &bytes, 0, ((void*)0))
            == 0)
        {
            ngx_connection_error(c, ngx_socket_errno,
                               "WSARecv() or WSAGetOverlappedResult() failed");
            return NGX_ERROR;
        }

        ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "WSARecv: fd:%d %ul of %z", c->fd, bytes, size);

        return bytes;
    }

    ovlp = (LPWSAOVERLAPPED) &rev->ovlp;
    ngx_memzero(ovlp, sizeof(WSAOVERLAPPED));
    wsabuf[0].buf = (char *) buf;
    wsabuf[0].len = size;
    flags = 0;
    bytes = 0;

    rc = WSARecv(c->fd, wsabuf, 1, &bytes, &flags, ovlp, ((void*)0));

    rev->complete = 0;

    ngx_log_debug4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "WSARecv ovlp: fd:%d rc:%d %ul of %z",
                   c->fd, rc, bytes, size);

    if (rc == -1) {
        err = ngx_socket_errno;
        if (err == WSA_IO_PENDING) {
            rev->active = 1;
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "WSARecv() posted");
            return NGX_AGAIN;
        }

        n = ngx_connection_error(c, err, "WSARecv() failed");

        if (n == NGX_ERROR) {
            rev->error = 1;
        }

        return n;
    }

    if (ngx_event_flags & NGX_USE_IOCP_EVENT) {







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
