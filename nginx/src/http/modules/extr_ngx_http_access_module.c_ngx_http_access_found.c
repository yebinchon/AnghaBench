
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_9__ {scalar_t__ satisfy; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_7__ {int log; } ;


 int NGX_HTTP_FORBIDDEN ;
 scalar_t__ NGX_HTTP_SATISFY_ALL ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_http_core_module ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_access_found(ngx_http_request_t *r, ngx_uint_t deny)
{
    ngx_http_core_loc_conf_t *clcf;

    if (deny) {
        clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);

        if (clcf->satisfy == NGX_HTTP_SATISFY_ALL) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "access forbidden by rule");
        }

        return NGX_HTTP_FORBIDDEN;
    }

    return NGX_OK;
}
