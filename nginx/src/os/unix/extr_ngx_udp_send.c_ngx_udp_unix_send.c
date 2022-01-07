
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int error; scalar_t__ ready; } ;
typedef TYPE_1__ ngx_event_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_6__ {int log; int sent; int addr_text; int fd; int socklen; int sockaddr; TYPE_1__* write; } ;
typedef TYPE_2__ ngx_connection_t ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_EAGAIN ;
 scalar_t__ NGX_EINTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_EVENT ;
 int ngx_connection_error (TYPE_2__*,scalar_t__,char*) ;
 int ngx_log_debug0 (int ,int ,scalar_t__,char*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,scalar_t__,size_t,int *) ;
 scalar_t__ ngx_socket_errno ;
 scalar_t__ sendto (int ,int *,size_t,int ,int ,int ) ;

ssize_t
ngx_udp_unix_send(ngx_connection_t *c, u_char *buf, size_t size)
{
    ssize_t n;
    ngx_err_t err;
    ngx_event_t *wev;

    wev = c->write;

    for ( ;; ) {
        n = sendto(c->fd, buf, size, 0, c->sockaddr, c->socklen);

        ngx_log_debug4(NGX_LOG_DEBUG_EVENT, c->log, 0,
                       "sendto: fd:%d %z of %uz to \"%V\"",
                       c->fd, n, size, &c->addr_text);

        if (n >= 0) {
            if ((size_t) n != size) {
                wev->error = 1;
                (void) ngx_connection_error(c, 0, "sendto() incomplete");
                return NGX_ERROR;
            }

            c->sent += n;

            return n;
        }

        err = ngx_socket_errno;

        if (err == NGX_EAGAIN) {
            wev->ready = 0;
            ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, NGX_EAGAIN,
                           "sendto() not ready");
            return NGX_AGAIN;
        }

        if (err != NGX_EINTR) {
            wev->error = 1;
            (void) ngx_connection_error(c, err, "sendto() failed");
            return NGX_ERROR;
        }
    }
}
