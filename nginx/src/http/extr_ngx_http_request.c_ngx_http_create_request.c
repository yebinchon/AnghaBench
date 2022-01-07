
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int stat_reading; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_15__ {TYPE_2__* current_request; TYPE_2__* request; } ;
typedef TYPE_3__ ngx_http_log_ctx_t ;
struct TYPE_16__ {int error_log; } ;
typedef TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_17__ {TYPE_1__* log; int requests; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_13__ {TYPE_3__* data; } ;


 int ngx_atomic_fetch_add (int ,int) ;
 TYPE_2__* ngx_http_alloc_request (TYPE_5__*) ;
 int ngx_http_core_module ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_set_connection_log (TYPE_5__*,int ) ;
 int ngx_stat_reading ;
 int ngx_stat_requests ;

ngx_http_request_t *
ngx_http_create_request(ngx_connection_t *c)
{
    ngx_http_request_t *r;
    ngx_http_log_ctx_t *ctx;
    ngx_http_core_loc_conf_t *clcf;

    r = ngx_http_alloc_request(c);
    if (r == ((void*)0)) {
        return ((void*)0);
    }

    c->requests++;

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

    ngx_set_connection_log(c, clcf->error_log);

    ctx = c->log->data;
    ctx->request = r;
    ctx->current_request = r;







    return r;
}
