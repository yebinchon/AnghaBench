
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef size_t ngx_uint_t ;
struct TYPE_11__ {int ipv6only; int tcp_keepcnt; int tcp_keepintvl; int tcp_keepidle; int proxy_protocol; int so_keepalive; int wildcard; int bind; int ctx; int socklen; int sockaddr; } ;
typedef TYPE_1__ ngx_rtmp_listen_t ;
struct TYPE_15__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_12__ {int family; TYPE_5__ addrs; int port; } ;
typedef TYPE_2__ ngx_rtmp_conf_port_t ;
struct TYPE_13__ {int ipv6only; int tcp_keepcnt; int tcp_keepintvl; int tcp_keepidle; int proxy_protocol; int so_keepalive; int wildcard; int bind; int ctx; int socklen; struct sockaddr* sockaddr; } ;
typedef TYPE_3__ ngx_rtmp_conf_addr_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {int temp_pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef TYPE_5__ ngx_array_t ;
typedef int in_port_t ;



 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_5__*,int ,int,int) ;
 void* ngx_array_push (TYPE_5__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_add_ports(ngx_conf_t *cf, ngx_array_t *ports,
    ngx_rtmp_listen_t *listen)
{
    in_port_t p;
    ngx_uint_t i;
    struct sockaddr *sa;
    struct sockaddr_in *sin;
    ngx_rtmp_conf_port_t *port;
    ngx_rtmp_conf_addr_t *addr;




    sa = (struct sockaddr *) &listen->sockaddr;

    switch (sa->sa_family) {
    default:
        sin = (struct sockaddr_in *) sa;
        p = sin->sin_port;
        break;
    }

    port = ports->elts;
    for (i = 0; i < ports->nelts; i++) {
        if (p == port[i].port && sa->sa_family == port[i].family) {



            port = &port[i];
            goto found;
        }
    }



    port = ngx_array_push(ports);
    if (port == ((void*)0)) {
        return NGX_ERROR;
    }

    port->family = sa->sa_family;
    port->port = p;

    if (ngx_array_init(&port->addrs, cf->temp_pool, 2,
                       sizeof(ngx_rtmp_conf_addr_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

found:

    addr = ngx_array_push(&port->addrs);
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    addr->sockaddr = (struct sockaddr *) &listen->sockaddr;
    addr->socklen = listen->socklen;
    addr->ctx = listen->ctx;
    addr->bind = listen->bind;
    addr->wildcard = listen->wildcard;
    addr->so_keepalive = listen->so_keepalive;
    addr->proxy_protocol = listen->proxy_protocol;
    return NGX_OK;
}
