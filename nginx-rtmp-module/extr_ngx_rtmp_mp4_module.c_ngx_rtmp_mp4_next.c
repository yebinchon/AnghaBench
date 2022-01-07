
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ngx_rtmp_session_t ;
struct TYPE_9__ {int valid; } ;
struct TYPE_10__ {TYPE_1__ cursor; } ;
typedef TYPE_2__ ngx_rtmp_mp4_track_t ;
typedef scalar_t__ ngx_int_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_rtmp_mp4_next_chunk (int *,TYPE_2__*) ;
 scalar_t__ ngx_rtmp_mp4_next_delay (int *,TYPE_2__*) ;
 scalar_t__ ngx_rtmp_mp4_next_key (int *,TYPE_2__*) ;
 scalar_t__ ngx_rtmp_mp4_next_size (int *,TYPE_2__*) ;
 scalar_t__ ngx_rtmp_mp4_next_time (int *,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_next(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    if (ngx_rtmp_mp4_next_time(s, t) != NGX_OK ||
        ngx_rtmp_mp4_next_key(s, t) != NGX_OK ||
        ngx_rtmp_mp4_next_chunk(s, t) != NGX_OK ||
        ngx_rtmp_mp4_next_size(s, t) != NGX_OK ||
        ngx_rtmp_mp4_next_delay(s, t) != NGX_OK)
    {
        t->cursor.valid = 0;
        return NGX_ERROR;
    }

    t->cursor.valid = 1;
    return NGX_OK;
}
