
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef void const accept_filter_arg ;
typedef size_t ngx_uint_t ;
struct TYPE_8__ {int rcvbuf; int sndbuf; int keepalive; int keepidle; int keepintvl; int keepcnt; int setfib; int fastopen; int accept_filter; int deferred_accept; scalar_t__ type; int addr_text; int fd; TYPE_1__* sockaddr; scalar_t__ wildcard; scalar_t__ add_deferred; scalar_t__ delete_deferred; int backlog; scalar_t__ listen; int * logp; int log; } ;
typedef TYPE_3__ ngx_listening_t ;
struct TYPE_7__ {size_t nelts; TYPE_3__* elts; } ;
struct TYPE_9__ {int log; TYPE_2__ listening; } ;
typedef TYPE_4__ ngx_cycle_t ;
struct TYPE_6__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_TCP ;
 int IPV6_RECVPKTINFO ;
 int IP_PKTINFO ;
 int IP_RECVDSTADDR ;
 int NGX_KEEPALIVE_FACTOR ;
 int NGX_LOG_ALERT ;
 scalar_t__ SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_ACCEPTFILTER ;
 int SO_KEEPALIVE ;
 int SO_RCVBUF ;
 int SO_SETFIB ;
 int SO_SNDBUF ;
 int TCP_DEFER_ACCEPT ;
 int TCP_FASTOPEN ;
 int TCP_KEEPCNT ;
 int TCP_KEEPIDLE ;
 int TCP_KEEPINTVL ;
 int TCP_NODELAY ;
 int listen (int ,int ) ;
 int ngx_cpystrn (int *,int *,int) ;
 int ngx_log_error (int ,int ,int ,char*,int,...) ;
 int ngx_memzero (void const*,int) ;
 int ngx_socket_errno ;
 int setsockopt (int ,int ,int ,void const*,int) ;

void
ngx_configure_listening_sockets(ngx_cycle_t *cycle)
{
    int value;
    ngx_uint_t i;
    ngx_listening_t *ls;





    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {

        ls[i].log = *ls[i].logp;

        if (ls[i].rcvbuf != -1) {
            if (setsockopt(ls[i].fd, SOL_SOCKET, SO_RCVBUF,
                           (const void *) &ls[i].rcvbuf, sizeof(int))
                == -1)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                              "setsockopt(SO_RCVBUF, %d) %V failed, ignored",
                              ls[i].rcvbuf, &ls[i].addr_text);
            }
        }

        if (ls[i].sndbuf != -1) {
            if (setsockopt(ls[i].fd, SOL_SOCKET, SO_SNDBUF,
                           (const void *) &ls[i].sndbuf, sizeof(int))
                == -1)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                              "setsockopt(SO_SNDBUF, %d) %V failed, ignored",
                              ls[i].sndbuf, &ls[i].addr_text);
            }
        }

        if (ls[i].keepalive) {
            value = (ls[i].keepalive == 1) ? 1 : 0;

            if (setsockopt(ls[i].fd, SOL_SOCKET, SO_KEEPALIVE,
                           (const void *) &value, sizeof(int))
                == -1)
            {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                              "setsockopt(SO_KEEPALIVE, %d) %V failed, ignored",
                              value, &ls[i].addr_text);
            }
        }
        if (ls[i].listen) {



            if (listen(ls[i].fd, ls[i].backlog) == -1) {
                ngx_log_error(NGX_LOG_ALERT, cycle->log, ngx_socket_errno,
                              "listen() to %V, backlog %d failed, ignored",
                              &ls[i].addr_text, ls[i].backlog);
            }
        }
    }

    return;
}
