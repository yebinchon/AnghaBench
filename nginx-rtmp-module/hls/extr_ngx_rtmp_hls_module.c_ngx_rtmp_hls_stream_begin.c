
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_stream_begin_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int next_stream_begin (int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_hls_stream_begin(ngx_rtmp_session_t *s, ngx_rtmp_stream_begin_t *v)
{
    return next_stream_begin(s, v);
}
