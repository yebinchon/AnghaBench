
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {scalar_t__ log_not_found; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_6__ {int log; } ;


 scalar_t__ NGX_EACCES ;
 int NGX_HTTP_FORBIDDEN ;
 int NGX_HTTP_NOT_FOUND ;
 int NGX_LOG_ERR ;
 int ngx_log_error (int ,int ,scalar_t__,char*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_index_error(ngx_http_request_t *r, ngx_http_core_loc_conf_t *clcf,
    u_char *file, ngx_err_t err)
{
    if (err == NGX_EACCES) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, err,
                      "\"%s\" is forbidden", file);

        return NGX_HTTP_FORBIDDEN;
    }

    if (clcf->log_not_found) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, err,
                      "\"%s\" is not found", file);
    }

    return NGX_HTTP_NOT_FOUND;
}
