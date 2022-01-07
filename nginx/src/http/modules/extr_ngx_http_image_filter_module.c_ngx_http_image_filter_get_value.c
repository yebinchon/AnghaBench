
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef int ngx_str_t ;
typedef int ngx_http_request_t ;
typedef int ngx_http_complex_value_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_complex_value (int *,int *,int *) ;
 int ngx_http_image_filter_value (int *) ;

__attribute__((used)) static ngx_uint_t
ngx_http_image_filter_get_value(ngx_http_request_t *r,
    ngx_http_complex_value_t *cv, ngx_uint_t v)
{
    ngx_str_t val;

    if (cv == ((void*)0)) {
        return v;
    }

    if (ngx_http_complex_value(r, cv, &val) != NGX_OK) {
        return 0;
    }

    return ngx_http_image_filter_value(&val);
}
