
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_15__ {scalar_t__ chunk_pos; scalar_t__ chunk_count; scalar_t__ chunk; } ;
struct TYPE_14__ {TYPE_2__* chunks; int id; TYPE_5__ cursor; } ;
typedef TYPE_4__ ngx_rtmp_mp4_track_t ;
typedef TYPE_5__ ngx_rtmp_mp4_cursor_t ;
struct TYPE_16__ {int samples_per_chunk; int first_chunk; } ;
typedef TYPE_6__ ngx_rtmp_mp4_chunk_entry_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int entry_count; TYPE_6__* entries; } ;
struct TYPE_11__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_OK ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,scalar_t__) ;
 int ngx_log_debug7 (int ,int ,int ,char*,int ,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ngx_rtmp_mp4_update_offset (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ ngx_rtmp_r32 (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_next_chunk(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    ngx_rtmp_mp4_cursor_t *cr;
    ngx_rtmp_mp4_chunk_entry_t *ce, *nce;
    ngx_int_t new_chunk;

    if (t->chunks == ((void*)0)) {
        return NGX_OK;
    }

    cr = &t->cursor;

    if (cr->chunk_pos >= ngx_rtmp_r32(t->chunks->entry_count)) {
        ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui chunk[%ui/%uD] overflow",
                       t->id, cr->chunk_pos,
                       ngx_rtmp_r32(t->chunks->entry_count));

        return NGX_ERROR;
    }

    ce = &t->chunks->entries[cr->chunk_pos];

    cr->chunk_count++;

    if (cr->chunk_count >= ngx_rtmp_r32(ce->samples_per_chunk)) {
        cr->chunk_count = 0;
        cr->chunk++;

        if (cr->chunk_pos + 1 < ngx_rtmp_r32(t->chunks->entry_count)) {
            nce = ce + 1;
            if (cr->chunk >= ngx_rtmp_r32(nce->first_chunk)) {
                cr->chunk_pos++;
                ce = nce;
            }
        }

        new_chunk = 1;

    } else {
        new_chunk = 0;
    }

    ngx_log_debug7(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: track#%ui chunk[%ui/%uD][%uD..%ui][%ui/%uD]",
                   t->id, cr->chunk_pos,
                   ngx_rtmp_r32(t->chunks->entry_count),
                   ngx_rtmp_r32(ce->first_chunk),
                   cr->chunk, cr->chunk_count,
                   ngx_rtmp_r32(ce->samples_per_chunk));


    if (new_chunk) {
        return ngx_rtmp_mp4_update_offset(s, t);
    }

    return NGX_OK;
}
