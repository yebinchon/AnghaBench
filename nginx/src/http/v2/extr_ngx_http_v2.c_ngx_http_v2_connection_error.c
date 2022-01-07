
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_v2_connection_t ;
struct TYPE_5__ {int log; } ;


 scalar_t__ NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_debug_point () ;
 int ngx_http_v2_finalize_connection (TYPE_2__*,scalar_t__) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static u_char *
ngx_http_v2_connection_error(ngx_http_v2_connection_t *h2c,
    ngx_uint_t err)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, h2c->connection->log, 0,
                   "http2 state connection error");

    if (err == NGX_HTTP_V2_INTERNAL_ERROR) {
        ngx_debug_point();
    }

    ngx_http_v2_finalize_connection(h2c, err);

    return ((void*)0);
}
