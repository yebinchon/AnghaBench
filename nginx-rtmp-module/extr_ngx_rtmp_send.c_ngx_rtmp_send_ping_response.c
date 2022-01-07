
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_create_ping_response (int *,int ) ;
 int ngx_rtmp_send_shared_packet (int *,int ) ;

ngx_int_t
ngx_rtmp_send_ping_response(ngx_rtmp_session_t *s, uint32_t timestamp)
{
    return ngx_rtmp_send_shared_packet(s,
           ngx_rtmp_create_ping_response(s, timestamp));
}
