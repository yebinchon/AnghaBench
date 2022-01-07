
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_char ;
typedef size_t ssize_t ;
struct TYPE_8__ {scalar_t__ error; } ;
struct TYPE_9__ {int active; int error; size_t available; scalar_t__ ready; TYPE_1__ ovlp; scalar_t__ complete; } ;
typedef TYPE_2__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_10__ {size_t sent; int fd; int log; TYPE_2__* write; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int WSAOVERLAPPED ;
struct TYPE_11__ {char* buf; size_t len; } ;
typedef TYPE_4__ WSABUF ;
typedef scalar_t__ LPWSAOVERLAPPED ;


 size_t NGX_AGAIN ;
 size_t NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_USE_IOCP_EVENT ;
 scalar_t__ WSAGetOverlappedResult (int ,scalar_t__,size_t*,int ,int *) ;
 int WSASend (int ,TYPE_4__*,int,size_t*,int ,scalar_t__,int *) ;
 scalar_t__ WSA_IO_PENDING ;
 int ngx_connection_error (TYPE_3__*,scalar_t__,char*) ;
 int ngx_event_flags ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,size_t,size_t) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int,size_t,size_t) ;
 int ngx_memzero (scalar_t__,int) ;
 scalar_t__ ngx_socket_errno ;

ssize_t
ngx_overlapped_wsasend(ngx_connection_t *c, u_char *buf, size_t size)
{
    int n;
    u_long sent;
    ngx_err_t err;
    ngx_event_t *wev;
    LPWSAOVERLAPPED ovlp;
    WSABUF wsabuf;

    wev = c->write;

    if (!wev->ready) {
        return NGX_AGAIN;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "wev->complete: %d", wev->complete);

    if (!wev->complete) {
        wsabuf.buf = (char *) buf;
        wsabuf.len = size;

        sent = 0;

        ovlp = (LPWSAOVERLAPPED) &c->write->ovlp;
        ngx_memzero(ovlp, sizeof(WSAOVERLAPPED));

        n = WSASend(c->fd, &wsabuf, 1, &sent, 0, ovlp, ((void*)0));

        ngx_log_debug4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "WSASend: fd:%d, %d, %ul of %uz", c->fd, n, sent, size);

        wev->complete = 0;

        if (n == 0) {
            if (ngx_event_flags & NGX_USE_IOCP_EVENT) {







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
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err,
                           "WSASend() posted");
            wev->active = 1;
            return NGX_AGAIN;
        }

        wev->error = 1;
        ngx_connection_error(c, err, "WSASend() failed");

        return NGX_ERROR;
    }



    wev->complete = 0;
    wev->active = 0;

    if (ngx_event_flags & NGX_USE_IOCP_EVENT) {

        if (wev->ovlp.error) {
            ngx_connection_error(c, wev->ovlp.error, "WSASend() failed");
            return NGX_ERROR;
        }

        sent = wev->available;

    } else {
        if (WSAGetOverlappedResult(c->fd, (LPWSAOVERLAPPED) &wev->ovlp,
                                   &sent, 0, ((void*)0))
            == 0)
        {
            ngx_connection_error(c, ngx_socket_errno,
                           "WSASend() or WSAGetOverlappedResult() failed");

            return NGX_ERROR;
        }
    }

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, c->log, 0,
                   "WSAGetOverlappedResult: fd:%d, %ul of %uz",
                   c->fd, sent, size);

    if (sent < size) {
        wev->ready = 0;
    }

    c->sent += sent;

    return sent;
}
