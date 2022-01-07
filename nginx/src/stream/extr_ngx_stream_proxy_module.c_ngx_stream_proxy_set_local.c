
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {TYPE_7__* local; int transparent; } ;
struct TYPE_18__ {TYPE_2__ peer; } ;
typedef TYPE_3__ ngx_stream_upstream_t ;
struct TYPE_19__ {int * value; TYPE_7__* addr; int transparent; } ;
typedef TYPE_4__ ngx_stream_upstream_local_t ;
struct TYPE_20__ {TYPE_1__* connection; } ;
typedef TYPE_5__ ngx_stream_session_t ;
struct TYPE_21__ {scalar_t__ len; int data; } ;
typedef TYPE_6__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_22__ {TYPE_6__ name; } ;
typedef TYPE_7__ ngx_addr_t ;
struct TYPE_16__ {int log; int pool; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_6__*) ;
 TYPE_7__* ngx_palloc (int ,int) ;
 scalar_t__ ngx_parse_addr_port (int ,TYPE_7__*,int ,scalar_t__) ;
 scalar_t__ ngx_stream_complex_value (TYPE_5__*,int *,TYPE_6__*) ;

__attribute__((used)) static ngx_int_t
ngx_stream_proxy_set_local(ngx_stream_session_t *s, ngx_stream_upstream_t *u,
    ngx_stream_upstream_local_t *local)
{
    ngx_int_t rc;
    ngx_str_t val;
    ngx_addr_t *addr;

    if (local == ((void*)0)) {
        u->peer.local = ((void*)0);
        return NGX_OK;
    }





    if (local->value == ((void*)0)) {
        u->peer.local = local->addr;
        return NGX_OK;
    }

    if (ngx_stream_complex_value(s, local->value, &val) != NGX_OK) {
        return NGX_ERROR;
    }

    if (val.len == 0) {
        return NGX_OK;
    }

    addr = ngx_palloc(s->connection->pool, sizeof(ngx_addr_t));
    if (addr == ((void*)0)) {
        return NGX_ERROR;
    }

    rc = ngx_parse_addr_port(s->connection->pool, addr, val.data, val.len);
    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "invalid local address \"%V\"", &val);
        return NGX_OK;
    }

    addr->name = val;
    u->peer.local = addr;

    return NGX_OK;
}
