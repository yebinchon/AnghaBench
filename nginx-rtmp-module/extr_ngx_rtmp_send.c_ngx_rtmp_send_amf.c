
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_header_t ;
typedef int ngx_rtmp_amf_elt_t ;
typedef int ngx_int_t ;


 int ngx_rtmp_create_amf (int *,int *,int *,size_t) ;
 int ngx_rtmp_send_shared_packet (int *,int ) ;

ngx_int_t
ngx_rtmp_send_amf(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
                  ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    return ngx_rtmp_send_shared_packet(s,
           ngx_rtmp_create_amf(s, h, elts, nelts));
}
