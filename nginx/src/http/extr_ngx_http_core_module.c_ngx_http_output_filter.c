
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {int args; int uri; TYPE_2__* connection; } ;
typedef TYPE_1__ ngx_http_request_t ;
struct TYPE_6__ {int error; int log; } ;
typedef TYPE_2__ ngx_connection_t ;
typedef int ngx_chain_t ;


 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ ngx_http_top_body_filter (TYPE_1__*,int *) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;

ngx_int_t
ngx_http_output_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    ngx_int_t rc;
    ngx_connection_t *c;

    c = r->connection;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "http output filter \"%V?%V\"", &r->uri, &r->args);

    rc = ngx_http_top_body_filter(r, in);

    if (rc == NGX_ERROR) {

        c->error = 1;
    }

    return rc;
}
