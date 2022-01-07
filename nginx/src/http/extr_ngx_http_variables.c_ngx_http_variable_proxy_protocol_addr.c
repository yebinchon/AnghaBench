
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int data; int len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_proxy_protocol_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int not_found; int valid; int data; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_10__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_7__ {int * proxy_protocol; } ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_proxy_protocol_addr(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_str_t *addr;
    ngx_proxy_protocol_t *pp;

    pp = r->connection->proxy_protocol;
    if (pp == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    addr = (ngx_str_t *) ((char *) pp + data);

    v->len = addr->len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = addr->data;

    return NGX_OK;
}
