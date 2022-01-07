
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_uint_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_create_play_status (int *,char*,char*,int ,int ) ;
 int ngx_rtmp_send_shared_packet (int *,int ) ;

ngx_int_t
ngx_rtmp_send_play_status(ngx_rtmp_session_t *s, char *code, char* level,
                          ngx_uint_t duration, ngx_uint_t bytes)
{
    return ngx_rtmp_send_shared_packet(s,
           ngx_rtmp_create_play_status(s, code, level, duration, bytes));
}
