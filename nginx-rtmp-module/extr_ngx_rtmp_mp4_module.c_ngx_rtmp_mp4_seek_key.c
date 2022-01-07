
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_rtmp_session_t ;
struct TYPE_14__ {scalar_t__ key_pos; scalar_t__ pos; int key; } ;
struct TYPE_13__ {TYPE_2__* keys; int id; TYPE_5__ cursor; } ;
typedef TYPE_4__ ngx_rtmp_mp4_track_t ;
typedef TYPE_5__ ngx_rtmp_mp4_cursor_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {int entry_count; int * entries; } ;
struct TYPE_10__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug3 (int ,int ,int ,char*,int ,scalar_t__,scalar_t__) ;
 int ngx_log_debug6 (int ,int ,int ,char*,int ,size_t,scalar_t__,scalar_t__,scalar_t__,char*) ;
 int ngx_rtmp_mp4_next_time (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ ngx_rtmp_r32 (int ) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mp4_seek_key(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    ngx_rtmp_mp4_cursor_t *cr;
    uint32_t *ke;
    ngx_int_t dpos;

    cr = &t->cursor;

    if (t->keys == ((void*)0)) {
        return NGX_OK;
    }

    while (cr->key_pos < ngx_rtmp_r32(t->keys->entry_count)) {
        if (ngx_rtmp_r32(t->keys->entries[cr->key_pos]) > cr->pos) {
            break;
        }

        cr->key_pos++;
    }

    if (cr->key_pos >= ngx_rtmp_r32(t->keys->entry_count)) {
        ngx_log_debug3(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                "mp4: track#%ui seek key[%ui/%uD] overflow",
                t->id, cr->key_pos,
                ngx_rtmp_r32(t->keys->entry_count));
        return NGX_OK;
    }

    ke = &t->keys->entries[cr->key_pos];



    dpos = ngx_rtmp_r32(*ke) - cr->pos - 1;
    cr->key = 1;


    for (; dpos > 0; --dpos) {
        ngx_rtmp_mp4_next_time(s, t);
    }



    ngx_log_debug6(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "mp4: track#%ui seek key[%ui/%uD][%ui/%uD]=%s",
                   t->id, cr->key_pos,
                   ngx_rtmp_r32(t->keys->entry_count),
                   cr->pos, ngx_rtmp_r32(*ke),
                   cr->key ? "match" : "miss");

    return NGX_OK;
}
