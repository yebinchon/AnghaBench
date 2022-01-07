
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int valid; scalar_t__ not_found; scalar_t__ no_cacheable; int * data; int * len; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_6__ {int status; } ;
struct TYPE_8__ {int err_status; scalar_t__ http_version; TYPE_1__ headers_out; int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;


 int NGX_ERROR ;
 scalar_t__ NGX_HTTP_VERSION_9 ;
 int NGX_INT_T_LEN ;
 int NGX_OK ;
 int * ngx_pnalloc (int ,int ) ;
 int * ngx_sprintf (int *,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_status(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t status;

    v->data = ngx_pnalloc(r->pool, NGX_INT_T_LEN);
    if (v->data == ((void*)0)) {
        return NGX_ERROR;
    }

    if (r->err_status) {
        status = r->err_status;

    } else if (r->headers_out.status) {
        status = r->headers_out.status;

    } else if (r->http_version == NGX_HTTP_VERSION_9) {
        status = 9;

    } else {
        status = 0;
    }

    v->len = ngx_sprintf(v->data, "%03ui", status) - v->data;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    return NGX_OK;
}
