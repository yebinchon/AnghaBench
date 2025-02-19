
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
typedef size_t ngx_uint_t ;
struct TYPE_11__ {struct sockaddr* sockaddr; } ;
typedef TYPE_1__ ngx_mail_listen_t ;
struct TYPE_15__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_12__ {scalar_t__ family; TYPE_5__ addrs; int port; } ;
typedef TYPE_2__ ngx_mail_conf_port_t ;
struct TYPE_13__ {TYPE_1__ opt; } ;
typedef TYPE_3__ ngx_mail_conf_addr_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {int temp_pool; } ;
typedef TYPE_4__ ngx_conf_t ;
typedef TYPE_5__ ngx_array_t ;
typedef int in_port_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_array_init (TYPE_5__*,int ,int,int) ;
 void* ngx_array_push (TYPE_5__*) ;
 int ngx_inet_get_port (struct sockaddr*) ;

__attribute__((used)) static ngx_int_t
ngx_mail_add_ports(ngx_conf_t *cf, ngx_array_t *ports,
    ngx_mail_listen_t *listen)
{
    in_port_t p;
    ngx_uint_t i;
    struct sockaddr *sa;
    ngx_mail_conf_port_t *port;
    ngx_mail_conf_addr_t *addr;

    sa = listen->sockaddr;
    p = ngx_inet_get_port(sa);

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
                       sizeof(ngx_mail_conf_addr_t))
        != NGX_OK)
    {
        return NGX_ERROR;
    }

found:

    addr = ngx_array_push(&port->addrs);
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    addr->opt = *listen;

    return NGX_OK;
}
