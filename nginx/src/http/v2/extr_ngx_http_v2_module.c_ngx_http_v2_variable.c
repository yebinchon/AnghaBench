
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_int_t ;
struct TYPE_8__ {int len; int valid; int * data; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_9__ {TYPE_1__* connection; scalar_t__ stream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_7__ {scalar_t__ ssl; } ;


 int NGX_OK ;
 TYPE_2__ ngx_http_variable_null_value ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{

    if (r->stream) {
        v->len = sizeof("h2c") - 1;
        v->valid = 1;
        v->no_cacheable = 0;
        v->not_found = 0;
        v->data = (u_char *) "h2c";

        return NGX_OK;
    }

    *v = ngx_http_variable_null_value;

    return NGX_OK;
}
