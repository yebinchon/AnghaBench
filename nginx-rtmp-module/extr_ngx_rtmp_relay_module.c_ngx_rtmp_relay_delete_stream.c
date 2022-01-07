
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_delete_stream_t ;
typedef int ngx_int_t ;


 int next_delete_stream (int *,int *) ;
 int ngx_rtmp_relay_close (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_relay_delete_stream(ngx_rtmp_session_t *s, ngx_rtmp_delete_stream_t *v)
{
    ngx_rtmp_relay_close(s);

    return next_delete_stream(s, v);
}
