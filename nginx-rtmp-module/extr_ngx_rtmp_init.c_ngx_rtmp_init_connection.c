
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_18__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int ngx_uint_t ;
struct TYPE_19__ {int auto_pushed; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_20__ {int naddrs; TYPE_5__* addrs; } ;
typedef TYPE_4__ ngx_rtmp_port_t ;
struct TYPE_22__ {scalar_t__ proxy_protocol; } ;
struct TYPE_21__ {TYPE_7__ conf; int addr; int addr6; } ;
typedef TYPE_5__ ngx_rtmp_in_addr_t ;
typedef TYPE_5__ ngx_rtmp_in6_addr_t ;
typedef TYPE_7__ ngx_rtmp_addr_conf_t ;
typedef int ngx_int_t ;
struct TYPE_23__ {int addr_text; int number; int log; struct sockaddr* local_sockaddr; TYPE_1__* listening; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_17__ {TYPE_4__* servers; } ;




 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_8__*,int *,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int *) ;
 int ngx_memcmp (int *,int *,int) ;
 int ngx_rtmp_close_connection (TYPE_8__*) ;
 int ngx_rtmp_handshake (TYPE_3__*) ;
 TYPE_3__* ngx_rtmp_init_session (TYPE_8__*,TYPE_7__*) ;
 int ngx_rtmp_naccepted ;
 int ngx_rtmp_proxy_protocol (TYPE_3__*) ;

void
ngx_rtmp_init_connection(ngx_connection_t *c)
{
    ngx_uint_t i;
    ngx_rtmp_port_t *port;
    struct sockaddr *sa;
    struct sockaddr_in *sin;
    ngx_rtmp_in_addr_t *addr;
    ngx_rtmp_session_t *s;
    ngx_rtmp_addr_conf_t *addr_conf;
    ngx_int_t unix_socket;





    ++ngx_rtmp_naccepted;





    port = c->listening->servers;
    unix_socket = 0;

    if (port->naddrs > 1) {
        if (ngx_connection_local_sockaddr(c, ((void*)0), 0) != NGX_OK) {
            ngx_rtmp_close_connection(c);
            return;
        }

        sa = c->local_sockaddr;

        switch (sa->sa_family) {
        case 128:
            unix_socket = 1;


        default:
            sin = (struct sockaddr_in *) sa;

            addr = port->addrs;



            for (i = 0; i < port->naddrs - 1; i++) {
                if (addr[i].addr == sin->sin_addr.s_addr) {
                    break;
                }
            }

            addr_conf = &addr[i].conf;

            break;
        }

    } else {
        switch (c->local_sockaddr->sa_family) {
        case 128:
            unix_socket = 1;


        default:
            addr = port->addrs;
            addr_conf = &addr[0].conf;
            break;
        }
    }

    ngx_log_error(NGX_LOG_INFO, c->log, 0, "*%ui client connected '%V'",
                  c->number, &c->addr_text);

    s = ngx_rtmp_init_session(c, addr_conf);
    if (s == ((void*)0)) {
        return;
    }




    s->auto_pushed = unix_socket;

    if (addr_conf->proxy_protocol) {
        ngx_rtmp_proxy_protocol(s);

    } else {
        ngx_rtmp_handshake(s);
    }
}
