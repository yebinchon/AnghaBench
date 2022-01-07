
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__* s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct TYPE_14__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
typedef int socklen_t ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_15__ {int len; int data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_16__ {int sockaddr; } ;
typedef TYPE_4__ ngx_sockaddr_t ;
typedef int ngx_int_t ;
struct TYPE_17__ {int local_socklen; TYPE_6__* local_sockaddr; int pool; int fd; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_18__ {int sa_family; } ;




 int NGX_ERROR ;
 int NGX_OK ;
 int getsockname (int ,int *,int*) ;
 int ngx_connection_error (TYPE_5__*,int ,char*) ;
 int ngx_memcpy (TYPE_6__*,TYPE_4__*,int) ;
 TYPE_6__* ngx_palloc (int ,int) ;
 int ngx_sock_ntop (TYPE_6__*,int,int ,int ,scalar_t__) ;
 int ngx_socket_errno ;

ngx_int_t
ngx_connection_local_sockaddr(ngx_connection_t *c, ngx_str_t *s,
    ngx_uint_t port)
{
    socklen_t len;
    ngx_uint_t addr;
    ngx_sockaddr_t sa;
    struct sockaddr_in *sin;





    addr = 0;

    if (c->local_socklen) {
        switch (c->local_sockaddr->sa_family) {
        default:
            sin = (struct sockaddr_in *) c->local_sockaddr;
            addr = sin->sin_addr.s_addr;
            break;
        }
    }

    if (addr == 0) {

        len = sizeof(ngx_sockaddr_t);

        if (getsockname(c->fd, &sa.sockaddr, &len) == -1) {
            ngx_connection_error(c, ngx_socket_errno, "getsockname() failed");
            return NGX_ERROR;
        }

        c->local_sockaddr = ngx_palloc(c->pool, len);
        if (c->local_sockaddr == ((void*)0)) {
            return NGX_ERROR;
        }

        ngx_memcpy(c->local_sockaddr, &sa, len);

        c->local_socklen = len;
    }

    if (s == ((void*)0)) {
        return NGX_OK;
    }

    s->len = ngx_sock_ntop(c->local_sockaddr, c->local_socklen,
                           s->data, s->len, port);

    return NGX_OK;
}
