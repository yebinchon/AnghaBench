
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_create_status (int *,char*,char*,char*) ;
 int ngx_rtmp_send_shared_packet (int *,int ) ;

ngx_int_t
ngx_rtmp_send_status(ngx_rtmp_session_t *s, char *code, char* level, char *desc)
{
    return ngx_rtmp_send_shared_packet(s,
           ngx_rtmp_create_status(s, code, level, desc));
}
