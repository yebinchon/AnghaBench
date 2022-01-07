
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int valid; int * data; int * len; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_11__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {struct sockaddr* sockaddr; } ;
typedef TYPE_4__ ngx_http_realip_ctx_t ;
struct TYPE_9__ {struct sockaddr* sockaddr; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_4__* ngx_http_realip_get_module_ctx (TYPE_3__*) ;
 int ngx_inet_get_port (struct sockaddr*) ;
 int * ngx_pnalloc (int ,int) ;
 int * ngx_sprintf (int *,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_realip_remote_port_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t port;
    struct sockaddr *sa;
    ngx_http_realip_ctx_t *ctx;

    ctx = ngx_http_realip_get_module_ctx(r);

    sa = ctx ? ctx->sockaddr : r->connection->sockaddr;

    v->len = 0;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = ngx_pnalloc(r->pool, sizeof("65535") - 1);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    port = ngx_inet_get_port(sa);

    if (port > 0 && port < 65536) {
        v->len = ngx_sprintf(v->data, "%ui", port) - v->data;
    }

    return NGX_OK;
}
