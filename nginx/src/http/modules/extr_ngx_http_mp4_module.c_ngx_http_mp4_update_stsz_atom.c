
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
struct TYPE_13__ {int entries; int size; } ;
typedef TYPE_4__ ngx_mp4_stsz_atom_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {int sample_sizes_entries; int start_sample; int* start_chunk_samples; int end_sample; int* end_chunk_samples; size_t size; TYPE_3__* out; int end_chunk_samples_size; int start_chunk_samples_size; } ;
typedef TYPE_5__ ngx_http_mp4_trak_t ;
struct TYPE_10__ {int data; } ;
struct TYPE_11__ {int log; TYPE_1__ name; } ;
struct TYPE_15__ {TYPE_2__ file; scalar_t__ length; } ;
typedef TYPE_6__ ngx_http_mp4_file_t ;
struct TYPE_16__ {int pos; int last; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_12__ {TYPE_7__* buf; } ;


 int NGX_ERROR ;
 size_t NGX_HTTP_MP4_STSZ_ATOM ;
 size_t NGX_HTTP_MP4_STSZ_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 scalar_t__ ngx_mp4_get_32value (int*) ;
 int ngx_mp4_set_32value (int ,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_update_stsz_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak)
{
    size_t atom_size;
    uint32_t *pos, *end, entries;
    ngx_buf_t *atom, *data;
    ngx_mp4_stsz_atom_t *stsz_atom;







    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mp4 stsz atom update");

    data = trak->out[NGX_HTTP_MP4_STSZ_DATA].buf;

    if (data) {
        entries = trak->sample_sizes_entries;

        if (trak->start_sample > entries) {
            ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                          "start time is out mp4 stsz samples in \"%s\"",
                          mp4->file.name.data);
            return NGX_ERROR;
        }

        entries -= trak->start_sample;
        data->pos += trak->start_sample * sizeof(uint32_t);
        end = (uint32_t *) data->pos;

        for (pos = end - trak->start_chunk_samples; pos < end; pos++) {
            trak->start_chunk_samples_size += ngx_mp4_get_32value(pos);
        }

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                       "chunk samples sizes:%uL",
                       trak->start_chunk_samples_size);

        if (mp4->length) {
            if (trak->end_sample - trak->start_sample > entries) {
                ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                              "end time is out mp4 stsz samples in \"%s\"",
                              mp4->file.name.data);
                return NGX_ERROR;
            }

            entries = trak->end_sample - trak->start_sample;
            data->last = data->pos + entries * sizeof(uint32_t);
            end = (uint32_t *) data->last;

            for (pos = end - trak->end_chunk_samples; pos < end; pos++) {
                trak->end_chunk_samples_size += ngx_mp4_get_32value(pos);
            }

            ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                           "mp4 stsz end_chunk_samples_size:%uL",
                           trak->end_chunk_samples_size);
        }

        atom_size = sizeof(ngx_mp4_stsz_atom_t) + (data->last - data->pos);
        trak->size += atom_size;

        atom = trak->out[NGX_HTTP_MP4_STSZ_ATOM].buf;
        stsz_atom = (ngx_mp4_stsz_atom_t *) atom->pos;

        ngx_mp4_set_32value(stsz_atom->size, atom_size);
        ngx_mp4_set_32value(stsz_atom->entries, entries);
    }

    return NGX_OK;
}
