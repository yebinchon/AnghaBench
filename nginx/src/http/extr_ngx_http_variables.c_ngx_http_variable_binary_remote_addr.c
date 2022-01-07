
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {int * s6_addr; } ;
struct sockaddr_in6 {TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct in6_addr {int dummy; } ;
typedef int ngx_int_t ;
struct TYPE_13__ {int len; int valid; int * data; int not_found; int no_cacheable; } ;
typedef TYPE_5__ ngx_http_variable_value_t ;
struct TYPE_14__ {TYPE_4__* connection; } ;
typedef TYPE_6__ ngx_http_request_t ;
typedef int in_addr_t ;
struct TYPE_10__ {int len; int * data; } ;
struct TYPE_12__ {TYPE_3__* sockaddr; TYPE_2__ addr_text; } ;
struct TYPE_11__ {int sa_family; } ;




 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_binary_remote_addr(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    struct sockaddr_in *sin;




    switch (r->connection->sockaddr->sa_family) {
    default:
        sin = (struct sockaddr_in *) r->connection->sockaddr;

        v->len = sizeof(in_addr_t);
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = (u_char *) &sin->sin_addr;

        break;
    }

    return NGX_OK;
}
