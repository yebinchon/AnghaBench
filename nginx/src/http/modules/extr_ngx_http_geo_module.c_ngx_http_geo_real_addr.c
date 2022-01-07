
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_14__ {int len; int data; scalar_t__ not_found; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_15__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_16__ {int index; } ;
typedef TYPE_4__ ngx_http_geo_ctx_t ;
struct TYPE_17__ {int socklen; int sockaddr; } ;
typedef TYPE_5__ ngx_addr_t ;
struct TYPE_13__ {int log; int socklen; int sockaddr; TYPE_2__ addr_text; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_2__* ngx_http_get_flushed_variable (TYPE_3__*,int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_2__*) ;
 scalar_t__ ngx_parse_addr (int ,TYPE_5__*,int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_geo_real_addr(ngx_http_request_t *r, ngx_http_geo_ctx_t *ctx,
    ngx_addr_t *addr)
{
    ngx_http_variable_value_t *v;

    if (ctx->index == -1) {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http geo started: %V", &r->connection->addr_text);

        addr->sockaddr = r->connection->sockaddr;
        addr->socklen = r->connection->socklen;


        return NGX_OK;
    }

    v = ngx_http_get_flushed_variable(r, ctx->index);

    if (v == ((void*)0) || v->not_found) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http geo not found");

        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http geo started: %v", v);

    if (ngx_parse_addr(r->pool, addr, v->data, v->len) == NGX_OK) {
        return NGX_OK;
    }

    return NGX_ERROR;
}
