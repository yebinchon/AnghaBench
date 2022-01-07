
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_5__ {int part; } ;
struct TYPE_6__ {TYPE_1__ headers; } ;
struct TYPE_7__ {TYPE_2__ headers_out; } ;
typedef TYPE_3__ ngx_http_request_t ;


 int ngx_http_variable_unknown_header (int *,int *,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_unknown_header_out(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    return ngx_http_variable_unknown_header(v, (ngx_str_t *) data,
                                            &r->headers_out.headers.part,
                                            sizeof("sent_http_") - 1);
}
