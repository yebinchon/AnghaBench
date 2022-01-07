
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_rtmp_session_t ;
typedef int ngx_rtmp_play_t ;
typedef int ngx_int_t ;


 int NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int NGX_RTMP_ACCESS_PLAY ;
 int next_play (int *,int *) ;
 scalar_t__ ngx_rtmp_access (int *,int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_access_play(ngx_rtmp_session_t *s, ngx_rtmp_play_t *v)
{
    if (ngx_rtmp_access(s, NGX_RTMP_ACCESS_PLAY) != NGX_OK) {
        return NGX_ERROR;
    }

    return next_play(s, v);
}
