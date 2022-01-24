#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_13__ {int /*<<< orphan*/  count; int /*<<< orphan*/  duration; } ;
typedef  TYPE_4__ ngx_mp4_stts_entry_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_14__ {int timescale; int time_to_sample_entries; int end_sample; int start_sample; TYPE_1__* out; } ;
typedef  TYPE_5__ ngx_http_mp4_trak_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int /*<<< orphan*/  log; TYPE_2__ name; } ;
struct TYPE_15__ {int start; int length; TYPE_3__ file; } ;
typedef  TYPE_6__ ngx_http_mp4_file_t ;
struct TYPE_16__ {int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_7__ ngx_buf_t ;
struct TYPE_10__ {TYPE_7__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 size_t NGX_HTTP_MP4_STTS_DATA ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC6(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak, ngx_uint_t start)
{
    uint32_t               count, duration, rest;
    uint64_t               start_time;
    ngx_buf_t             *data;
    ngx_uint_t             start_sample, entries, start_sec;
    ngx_mp4_stts_entry_t  *entry, *end;

    if (start) {
        start_sec = mp4->start;

        FUNC0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stts crop start_time:%ui", start_sec);

    } else if (mp4->length) {
        start_sec = mp4->length;

        FUNC0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stts crop end_time:%ui", start_sec);

    } else {
        return NGX_OK;
    }

    data = trak->out[NGX_HTTP_MP4_STTS_DATA].buf;

    start_time = (uint64_t) start_sec * trak->timescale / 1000;

    entries = trak->time_to_sample_entries;
    start_sample = 0;
    entry = (ngx_mp4_stts_entry_t *) data->pos;
    end = (ngx_mp4_stts_entry_t *) data->last;

    while (entry < end) {
        count = FUNC4(entry->count);
        duration = FUNC4(entry->duration);

        FUNC2(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "time:%uL, count:%uD, duration:%uD",
                       start_time, count, duration);

        if (start_time < (uint64_t) count * duration) {
            start_sample += (ngx_uint_t) (start_time / duration);
            rest = (uint32_t) (start_time / duration);
            goto found;
        }

        start_sample += count;
        start_time -= count * duration;
        entries--;
        entry++;
    }

    if (start) {
        FUNC3(NGX_LOG_ERR, mp4->file.log, 0,
                      "start time is out mp4 stts samples in \"%s\"",
                      mp4->file.name.data);

        return NGX_ERROR;

    } else {
        trak->end_sample = trak->start_sample + start_sample;

        FUNC0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "end_sample:%ui", trak->end_sample);

        return NGX_OK;
    }

found:

    if (start) {
        FUNC5(entry->count, count - rest);
        data->pos = (u_char *) entry;
        trak->time_to_sample_entries = entries;
        trak->start_sample = start_sample;

        FUNC1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "start_sample:%ui, new count:%uD",
                       trak->start_sample, count - rest);

    } else {
        FUNC5(entry->count, rest);
        data->last = (u_char *) (entry + 1);
        trak->time_to_sample_entries -= entries - 1;
        trak->end_sample = trak->start_sample + start_sample;

        FUNC1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "end_sample:%ui, new count:%uD",
                       trak->end_sample, rest);
    }

    return NGX_OK;
}