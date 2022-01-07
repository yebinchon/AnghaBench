
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_long ;
typedef int u_char ;
typedef size_t ssize_t ;
struct TYPE_7__ {int error; scalar_t__ ready; } ;
typedef TYPE_1__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_8__ {size_t sent; int log; int fd; TYPE_1__* write; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_9__ {char* buf; size_t len; } ;
typedef TYPE_3__ WSABUF ;


 size_t NGX_AGAIN ;
 size_t NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 scalar_t__ WSAEWOULDBLOCK ;
 int WSASend (int ,TYPE_3__*,int,size_t*,int ,int *,int *) ;
 int ngx_connection_error (TYPE_2__*,scalar_t__,char*) ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,int,size_t,size_t) ;
 scalar_t__ ngx_socket_errno ;

ssize_t
ngx_wsasend(ngx_connection_t *c, u_char *buf, size_t size)
{
    int n;
    u_long sent;
    ngx_err_t err;
    ngx_event_t *wev;
    WSABUF wsabuf;

    wev = c->write;

    if (!wev->ready) {
        return NGX_AGAIN;
    }






    wsabuf.buf = (char *) buf;
    wsabuf.len = size;

    sent = 0;

    n = WSASend(c->fd, &wsabuf, 1, &sent, 0, ((void*)0), ((void*)0));

    ngx_log_debug4(NGX_LOG_DEBUG_EVENT, c->log, 0,
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
        ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, err, "WSASend() not ready");
        wev->ready = 0;
        return NGX_AGAIN;
    }

    wev->error = 1;
    ngx_connection_error(c, err, "WSASend() failed");

    return NGX_ERROR;
}
