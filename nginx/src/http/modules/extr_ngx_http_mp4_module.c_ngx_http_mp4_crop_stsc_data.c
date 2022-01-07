
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_13__ {int id; int samples; int chunk; } ;
typedef TYPE_4__ ngx_mp4_stsc_entry_t ;
typedef int ngx_int_t ;
struct TYPE_16__ {int temporary; int * last; int * pos; } ;
struct TYPE_14__ {int sample_to_chunk_entries; int chunks; int start_chunk; int start_chunk_samples; int end_chunk_samples; int end_chunk; TYPE_1__* out; TYPE_7__ stsc_end_chunk_buf; TYPE_4__ stsc_end_chunk_entry; TYPE_7__ stsc_start_chunk_buf; TYPE_4__ stsc_start_chunk_entry; scalar_t__ start_sample; scalar_t__ end_sample; } ;
typedef TYPE_5__ ngx_http_mp4_trak_t ;
struct TYPE_12__ {int data; } ;
struct TYPE_11__ {int log; TYPE_3__ name; } ;
struct TYPE_15__ {TYPE_2__ file; scalar_t__ length; } ;
typedef TYPE_6__ ngx_http_mp4_file_t ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_10__ {TYPE_7__* buf; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_MP4_STSC_DATA ;
 size_t NGX_HTTP_MP4_STSC_END ;
 size_t NGX_HTTP_MP4_STSC_START ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,int) ;
 int ngx_log_debug5 (int ,int ,int ,char*,int,int,int,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,char*,...) ;
 int ngx_mp4_get_32value (int ) ;
 int ngx_mp4_set_32value (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_crop_stsc_data(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak, ngx_uint_t start)
{
    uint32_t start_sample, chunk, samples, id, next_chunk, n,
                           prev_samples;
    ngx_buf_t *data, *buf;
    ngx_uint_t entries, target_chunk, chunk_samples;
    ngx_mp4_stsc_entry_t *entry, *end, *first;

    entries = trak->sample_to_chunk_entries - 1;

    if (start) {
        start_sample = (uint32_t) trak->start_sample;

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stsc crop start_sample:%uD", start_sample);

    } else if (mp4->length) {
        start_sample = (uint32_t) (trak->end_sample - trak->start_sample);
        samples = 0;

        data = trak->out[NGX_HTTP_MP4_STSC_START].buf;

        if (data) {
            entry = (ngx_mp4_stsc_entry_t *) data->pos;
            samples = ngx_mp4_get_32value(entry->samples);
            entries--;

            if (samples > start_sample) {
                samples = start_sample;
                ngx_mp4_set_32value(entry->samples, samples);
            }

            start_sample -= samples;
        }

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "mp4 stsc crop end_sample:%uD, ext_samples:%uD",
                       start_sample, samples);

    } else {
        return NGX_OK;
    }

    data = trak->out[NGX_HTTP_MP4_STSC_DATA].buf;

    entry = (ngx_mp4_stsc_entry_t *) data->pos;
    end = (ngx_mp4_stsc_entry_t *) data->last;

    chunk = ngx_mp4_get_32value(entry->chunk);
    samples = ngx_mp4_get_32value(entry->samples);
    id = ngx_mp4_get_32value(entry->id);
    prev_samples = 0;
    entry++;

    while (entry < end) {

        next_chunk = ngx_mp4_get_32value(entry->chunk);

        ngx_log_debug5(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "sample:%uD, chunk:%uD, chunks:%uD, "
                       "samples:%uD, id:%uD",
                       start_sample, chunk, next_chunk - chunk, samples, id);

        n = (next_chunk - chunk) * samples;

        if (start_sample < n) {
            goto found;
        }

        start_sample -= n;

        prev_samples = samples;
        chunk = next_chunk;
        samples = ngx_mp4_get_32value(entry->samples);
        id = ngx_mp4_get_32value(entry->id);
        entries--;
        entry++;
    }

    next_chunk = trak->chunks + 1;

    ngx_log_debug4(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "sample:%uD, chunk:%uD, chunks:%uD, samples:%uD",
                   start_sample, chunk, next_chunk - chunk, samples);

    n = (next_chunk - chunk) * samples;

    if (start_sample > n) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "%s time is out mp4 stsc chunks in \"%s\"",
                      start ? "start" : "end", mp4->file.name.data);
        return NGX_ERROR;
    }

found:

    entries++;
    entry--;

    if (samples == 0) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "zero number of samples in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    target_chunk = chunk - 1;
    target_chunk += start_sample / samples;
    chunk_samples = start_sample % samples;

    if (start) {
        data->pos = (u_char *) entry;

        trak->sample_to_chunk_entries = entries;
        trak->start_chunk = target_chunk;
        trak->start_chunk_samples = chunk_samples;

        ngx_mp4_set_32value(entry->chunk, trak->start_chunk + 1);

        samples -= chunk_samples;

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "start_chunk:%ui, start_chunk_samples:%ui",
                       trak->start_chunk, trak->start_chunk_samples);

    } else {
        if (start_sample) {
            data->last = (u_char *) (entry + 1);
            trak->sample_to_chunk_entries -= entries - 1;
            trak->end_chunk_samples = samples;

        } else {
            data->last = (u_char *) entry;
            trak->sample_to_chunk_entries -= entries;
            trak->end_chunk_samples = prev_samples;
        }

        if (chunk_samples) {
            trak->end_chunk = target_chunk + 1;
            trak->end_chunk_samples = chunk_samples;

        } else {
            trak->end_chunk = target_chunk;
        }

        samples = chunk_samples;
        next_chunk = chunk + 1;

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "end_chunk:%ui, end_chunk_samples:%ui",
                       trak->end_chunk, trak->end_chunk_samples);
    }

    if (chunk_samples && next_chunk - target_chunk == 2) {

        ngx_mp4_set_32value(entry->samples, samples);

    } else if (chunk_samples && start) {

        first = &trak->stsc_start_chunk_entry;
        ngx_mp4_set_32value(first->chunk, 1);
        ngx_mp4_set_32value(first->samples, samples);
        ngx_mp4_set_32value(first->id, id);

        buf = &trak->stsc_start_chunk_buf;
        buf->temporary = 1;
        buf->pos = (u_char *) first;
        buf->last = (u_char *) first + sizeof(ngx_mp4_stsc_entry_t);

        trak->out[NGX_HTTP_MP4_STSC_START].buf = buf;

        ngx_mp4_set_32value(entry->chunk, trak->start_chunk + 2);

        trak->sample_to_chunk_entries++;

    } else if (chunk_samples) {

        first = &trak->stsc_end_chunk_entry;
        ngx_mp4_set_32value(first->chunk, trak->end_chunk - trak->start_chunk);
        ngx_mp4_set_32value(first->samples, samples);
        ngx_mp4_set_32value(first->id, id);

        buf = &trak->stsc_end_chunk_buf;
        buf->temporary = 1;
        buf->pos = (u_char *) first;
        buf->last = (u_char *) first + sizeof(ngx_mp4_stsc_entry_t);

        trak->out[NGX_HTTP_MP4_STSC_END].buf = buf;

        trak->sample_to_chunk_entries++;
    }

    return NGX_OK;
}
