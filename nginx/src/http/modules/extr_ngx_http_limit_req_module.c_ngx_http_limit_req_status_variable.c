
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {int not_found; int valid; int data; int len; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_9__ {TYPE_1__* main; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_10__ {int data; int len; } ;
struct TYPE_7__ {int limit_req_status; } ;


 int NGX_OK ;
 TYPE_6__* ngx_http_limit_req_status ;

__attribute__((used)) static ngx_int_t
ngx_http_limit_req_status_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    if (r->main->limit_req_status == 0) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->len = ngx_http_limit_req_status[r->main->limit_req_status - 1].len;
    v->data = ngx_http_limit_req_status[r->main->limit_req_status - 1].data;

    return NGX_OK;
}
