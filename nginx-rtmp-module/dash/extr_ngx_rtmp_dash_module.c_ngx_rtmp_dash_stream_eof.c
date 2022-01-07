
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_stream_eof_t ;
typedef int ngx_rtmp_session_t ;
typedef int ngx_int_t ;


 int next_stream_eof (int *,int *) ;
 int ngx_rtmp_dash_close_fragments (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_dash_stream_eof(ngx_rtmp_session_t *s, ngx_rtmp_stream_eof_t *v)
{
    ngx_rtmp_dash_close_fragments(s);

    return next_stream_eof(s, v);
}
