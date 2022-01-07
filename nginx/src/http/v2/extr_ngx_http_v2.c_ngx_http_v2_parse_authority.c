
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_request_t ;


 int ngx_http_v2_parse_header (int *,int *,int *) ;
 int * ngx_http_v2_parse_headers ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_parse_authority(ngx_http_request_t *r, ngx_str_t *value)
{
    return ngx_http_v2_parse_header(r, &ngx_http_v2_parse_headers[0], value);
}
