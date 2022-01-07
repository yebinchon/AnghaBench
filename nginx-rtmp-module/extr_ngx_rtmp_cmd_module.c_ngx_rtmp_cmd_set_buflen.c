
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_set_buflen_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_cmd_set_buflen(ngx_rtmp_session_t *s, ngx_rtmp_set_buflen_t *v)
{
    return NGX_OK;
}
