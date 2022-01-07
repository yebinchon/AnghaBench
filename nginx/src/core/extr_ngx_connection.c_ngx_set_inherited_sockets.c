
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
typedef int accept_filter_arg ;
typedef int socklen_t ;
typedef size_t ngx_uint_t ;
typedef int ngx_sockaddr_t ;
struct TYPE_14__ {size_t len; int * data; } ;
struct TYPE_11__ {int socklen; int ignore; scalar_t__ type; int rcvbuf; int sndbuf; int setfib; int reuseport; int fastopen; int deferred_accept; TYPE_6__ addr_text; TYPE_6__* fd; int * accept_filter; int backlog; TYPE_4__* sockaddr; void* addr_text_max_len; } ;
typedef TYPE_2__ ngx_listening_t ;
typedef int ngx_int_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_10__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_12__ {int log; int pool; TYPE_1__ listening; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_13__ {int sa_family; } ;





 int IPPROTO_TCP ;
 scalar_t__ NGX_EINVAL ;
 scalar_t__ NGX_ENOPROTOOPT ;
 scalar_t__ NGX_EOPNOTSUPP ;
 int NGX_ERROR ;
 void* NGX_INET6_ADDRSTRLEN ;
 void* NGX_INET_ADDRSTRLEN ;
 int NGX_LISTEN_BACKLOG ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_CRIT ;
 int NGX_LOG_NOTICE ;
 int NGX_OK ;
 void* NGX_UNIX_ADDRSTRLEN ;
 scalar_t__ SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_ACCEPTFILTER ;
 int SO_RCVBUF ;
 int SO_REUSEPORT ;
 int SO_REUSEPORT_LB ;
 int SO_SETFIB ;
 int SO_SNDBUF ;
 int SO_TYPE ;
 int TCP_DEFER_ACCEPT ;
 int TCP_FASTOPEN ;
 int getsockname (TYPE_6__*,TYPE_4__*,int*) ;
 int getsockopt (TYPE_6__*,int ,int ,int*,int*) ;
 int ngx_cpystrn (int *,int *,int) ;
 int ngx_log_error (int ,int ,scalar_t__,char*,TYPE_6__*) ;
 int ngx_memzero (int*,int) ;
 void* ngx_palloc (int ,int) ;
 int * ngx_pnalloc (int ,size_t) ;
 size_t ngx_sock_ntop (TYPE_4__*,int,int *,size_t,int) ;
 scalar_t__ ngx_socket_errno ;

ngx_int_t
ngx_set_inherited_sockets(ngx_cycle_t *cycle)
{
    size_t len;
    ngx_uint_t i;
    ngx_listening_t *ls;
    socklen_t olen;
    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {

        ls[i].sockaddr = ngx_palloc(cycle->pool, sizeof(ngx_sockaddr_t));
        if (ls[i].sockaddr == ((void*)0)) {
            return NGX_ERROR;
        }

        ls[i].socklen = sizeof(ngx_sockaddr_t);
        if (getsockname(ls[i].fd, ls[i].sockaddr, &ls[i].socklen) == -1) {
            ngx_log_error(NGX_LOG_CRIT, cycle->log, ngx_socket_errno,
                          "getsockname() of the inherited "
                          "socket #%d failed", ls[i].fd);
            ls[i].ignore = 1;
            continue;
        }

        if (ls[i].socklen > (socklen_t) sizeof(ngx_sockaddr_t)) {
            ls[i].socklen = sizeof(ngx_sockaddr_t);
        }

        switch (ls[i].sockaddr->sa_family) {
        case 130:
            ls[i].addr_text_max_len = NGX_INET_ADDRSTRLEN;
            len = NGX_INET_ADDRSTRLEN + sizeof(":65535") - 1;
            break;

        default:
            ngx_log_error(NGX_LOG_CRIT, cycle->log, ngx_socket_errno,
                          "the inherited socket #%d has "
                          "an unsupported protocol family", ls[i].fd);
            ls[i].ignore = 1;
            continue;
        }

        ls[i].addr_text.data = ngx_pnalloc(cycle->pool, len);
        if (ls[i].addr_text.data == ((void*)0)) {
            return NGX_ERROR;
        }

        len = ngx_sock_ntop(ls[i].sockaddr, ls[i].socklen,
                            ls[i].addr_text.data, len, 1);
        if (len == 0) {
            return NGX_ERROR;
        }

        ls[i].addr_text.len = len;

        ls[i].backlog = NGX_LISTEN_BACKLOG;

        olen = sizeof(int);

        if (getsockopt(ls[i].fd, SOL_SOCKET, SO_TYPE, (void *) &ls[i].type,
                       &olen)
            == -1)
        {
            ngx_log_error(NGX_LOG_CRIT, cycle->log, ngx_socket_errno,
                          "getsockopt(SO_TYPE) %V failed", &ls[i].addr_text);
            ls[i].ignore = 1;
            continue;
        }

        olen = sizeof(int);

        if (getsockopt(ls[i].fd, SOL_SOCKET, SO_RCVBUF, (void *) &ls[i].rcvbuf,
                       &olen)
            == -1)
        {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                          "getsockopt(SO_RCVBUF) %V failed, ignored",
                          &ls[i].addr_text);

            ls[i].rcvbuf = -1;
        }

        olen = sizeof(int);

        if (getsockopt(ls[i].fd, SOL_SOCKET, SO_SNDBUF, (void *) &ls[i].sndbuf,
                       &olen)
            == -1)
        {
            ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                          "getsockopt(SO_SNDBUF) %V failed, ignored",
                          &ls[i].addr_text);

            ls[i].sndbuf = -1;
        }
        if (ls[i].type != SOCK_STREAM) {
            continue;
        }
    }

    return NGX_OK;
}
