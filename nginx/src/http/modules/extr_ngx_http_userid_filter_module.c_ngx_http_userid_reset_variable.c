
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;


 int NGX_OK ;
 int ngx_http_variable_null_value ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_reset_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    *v = ngx_http_variable_null_value;

    return NGX_OK;
}
