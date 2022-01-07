
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int next_play ;
 int next_publish ;
 int ngx_rtmp_access_play ;
 int ngx_rtmp_access_publish ;
 int ngx_rtmp_play ;
 int ngx_rtmp_publish ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_access_postconfiguration(ngx_conf_t *cf)
{

    next_publish = ngx_rtmp_publish;
    ngx_rtmp_publish = ngx_rtmp_access_publish;

    next_play = ngx_rtmp_play;
    ngx_rtmp_play = ngx_rtmp_access_play;

    return NGX_OK;
}
