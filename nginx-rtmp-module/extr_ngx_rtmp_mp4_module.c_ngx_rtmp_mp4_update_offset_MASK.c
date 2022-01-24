#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* off_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_12__ {TYPE_2__* connection; } ;
typedef  TYPE_4__ ngx_rtmp_session_t ;
struct TYPE_14__ {int chunk; void* offset; scalar_t__ size; } ;
struct TYPE_13__ {TYPE_3__* offsets; int /*<<< orphan*/  id; TYPE_1__* offsets64; TYPE_6__ cursor; } ;
typedef  TYPE_5__ ngx_rtmp_mp4_track_t ;
typedef  TYPE_6__ ngx_rtmp_mp4_cursor_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {int /*<<< orphan*/  entry_count; int /*<<< orphan*/ * entries; } ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
struct TYPE_9__ {int /*<<< orphan*/ * entries; int /*<<< orphan*/  entry_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,size_t,void*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC5(ngx_rtmp_session_t *s, ngx_rtmp_mp4_track_t *t)
{
    ngx_rtmp_mp4_cursor_t          *cr;
    ngx_uint_t                      chunk;

    cr = &t->cursor;

    if (cr->chunk < 1) {
        FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui offset[%ui] underflow",
                       t->id, cr->chunk);
        return NGX_ERROR;
    }

    chunk = cr->chunk - 1;

    if (t->offsets) {
        if (chunk >= FUNC3(t->offsets->entry_count)) {
            FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                           "mp4: track#%ui offset[%ui/%uD] overflow",
                           t->id, cr->chunk,
                           FUNC3(t->offsets->entry_count));

            return NGX_ERROR;
        }

        cr->offset = (off_t) FUNC3(t->offsets->entries[chunk]);
        cr->size = 0;

        FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui offset[%ui/%uD]=%O",
                       t->id, cr->chunk,
                       FUNC3(t->offsets->entry_count),
                       cr->offset);

        return NGX_OK;
    }

    if (t->offsets64) {
        if (chunk >= FUNC3(t->offsets64->entry_count)) {
            FUNC1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                           "mp4: track#%ui offset64[%ui/%uD] overflow",
                           t->id, cr->chunk,
                           FUNC3(t->offsets->entry_count));

            return NGX_ERROR;
        }

        cr->offset = (off_t) FUNC4(t->offsets64->entries[chunk]);
        cr->size = 0;

        FUNC2(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                       "mp4: track#%ui offset64[%ui/%uD]=%O",
                       t->id, cr->chunk,
                       FUNC3(t->offsets->entry_count),
                       cr->offset);

        return NGX_OK;
    }

    return NGX_ERROR;
}