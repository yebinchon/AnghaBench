
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


typedef size_t ngx_uint_t ;
struct TYPE_12__ {TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_rtmp_session_t ;
struct TYPE_14__ {int chunk_count; int pos; int size; int offset; size_t size_pos; } ;
struct TYPE_13__ {TYPE_3__* sizes; int id; TYPE_1__* sizes2; TYPE_6__ cursor; } ;
typedef TYPE_5__ ngx_rtmp_mp4_track_t ;
typedef TYPE_6__ ngx_rtmp_mp4_cursor_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {scalar_t__ sample_count; scalar_t__* entries; scalar_t__ sample_size; } ;
struct TYPE_10__ {int log; } ;
struct TYPE_9__ {scalar_t__ sample_count; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,int) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,void*,void*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int ,size_t,void*,int) ;
 void* ngx_rtmp_r32 (scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_seek_size(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    ngx_rtmp_mp4_cursor_t *cr;
    ngx_uint_t pos;

    cr = &t->cursor;

    if (cr->chunk_count > cr->pos) {
        return NGX_ERROR;
    }

    if (t->sizes) {
        if (t->sizes->sample_size) {
            cr->size = ngx_rtmp_r32(t->sizes->sample_size);

            cr->offset += cr->size * cr->chunk_count;

            ngx_log_debug2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                           "mp4: track#%ui seek size fix=%uz",
                           t->id, cr->size);

            return NGX_OK;
        }

        if (cr->pos >= ngx_rtmp_r32(t->sizes->sample_count)) {
            ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                           "mp4: track#%ui seek size[%ui/%uD] overflow",
                           t->id, cr->pos,
                           ngx_rtmp_r32(t->sizes->sample_count));

            return NGX_ERROR;
        }

        for (pos = 1; pos <= cr->chunk_count; ++pos) {
            cr->offset += ngx_rtmp_r32(t->sizes->entries[cr->pos - pos]);
        }

        cr->size_pos = cr->pos;
        cr->size = ngx_rtmp_r32(t->sizes->entries[cr->size_pos]);

        ngx_log_debug4(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui seek size[%ui/%uD]=%uz",
                       t->id, cr->size_pos,
                       ngx_rtmp_r32(t->sizes->sample_count),
                       cr->size);

        return NGX_OK;
    }

    if (t->sizes2) {
        if (cr->size_pos >= ngx_rtmp_r32(t->sizes2->sample_count)) {
            ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                           "mp4: track#%ui seek size2[%ui/%uD] overflow",
                           t->id, cr->size_pos,
                           ngx_rtmp_r32(t->sizes->sample_count));

            return NGX_ERROR;
        }

        cr->size_pos = cr->pos;


        return NGX_OK;
    }

    return NGX_ERROR;
}
