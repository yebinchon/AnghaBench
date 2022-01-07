
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_14__ {void* delay_pos; scalar_t__ pos; void* delay; scalar_t__ delay_count; } ;
struct TYPE_12__ {TYPE_2__* delays; int id; TYPE_6__ cursor; } ;
typedef TYPE_4__ ngx_rtmp_mp4_track_t ;
struct TYPE_13__ {int sample_count; int sample_offset; } ;
typedef TYPE_5__ ngx_rtmp_mp4_delay_entry_t ;
typedef TYPE_6__ ngx_rtmp_mp4_cursor_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {int entry_count; TYPE_5__* entries; } ;
struct TYPE_9__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,void*,void*) ;
 int ngx_log_debug6 (int ,int ,int ,char*,int ,void*,void*,scalar_t__,void*,void*) ;
 void* ngx_rtmp_r32 (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_seek_delay(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    ngx_rtmp_mp4_cursor_t *cr;
    ngx_rtmp_mp4_delay_entry_t *de;
    uint32_t pos, dpos;

    cr = &t->cursor;

    if (t->delays == ((void*)0)) {
        return NGX_OK;
    }

    pos = 0;
    de = t->delays->entries;

    while (cr->delay_pos < ngx_rtmp_r32(t->delays->entry_count)) {
        dpos = ngx_rtmp_r32(de->sample_count);

        if (pos + dpos > cr->pos) {
            cr->delay_count = cr->pos - pos;
            cr->delay = ngx_rtmp_r32(de->sample_offset);
            break;
        }

        cr->delay_pos++;
        pos += dpos;
        de++;
    }

    if (cr->delay_pos >= ngx_rtmp_r32(t->delays->entry_count)) {
        ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "mp4: track#%ui seek delay[%ui/%uD] overflow",
                t->id, cr->delay_pos,
                ngx_rtmp_r32(t->delays->entry_count));

        return NGX_OK;
    }

    ngx_log_debug6(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: track#%ui seek delay[%ui/%uD][%ui/%uD]=%ui",
                   t->id, cr->delay_pos,
                   ngx_rtmp_r32(t->delays->entry_count),
                   cr->delay_count,
                   ngx_rtmp_r32(de->sample_count), cr->delay);

    return NGX_OK;
}
