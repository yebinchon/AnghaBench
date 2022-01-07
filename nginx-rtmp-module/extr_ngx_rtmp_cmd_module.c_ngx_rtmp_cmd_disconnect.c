
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_delete_stream (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_cmd_disconnect(ngx_rtmp_session_t *s)
{
    return ngx_rtmp_delete_stream(s, ((void*)0));
}
