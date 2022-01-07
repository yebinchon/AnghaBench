
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_create_bandwidth (int *,int ,int ) ;
 int ngx_rtmp_send_shared_packet (int *,int ) ;

ngx_int_t
ngx_rtmp_send_bandwidth(ngx_rtmp_session_t *s, uint32_t ack_size,
                        uint8_t limit_type)
{
    return ngx_rtmp_send_shared_packet(s,
           ngx_rtmp_create_bandwidth(s, ack_size, limit_type));
}
