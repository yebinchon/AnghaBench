
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int entries; int size; } ;
typedef TYPE_4__ ngx_mp4_stts_atom_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_16__ {size_t time_to_sample_entries; size_t size; TYPE_3__* out; } ;
typedef TYPE_5__ ngx_http_mp4_trak_t ;
struct TYPE_12__ {int data; } ;
struct TYPE_13__ {int log; TYPE_1__ name; } ;
struct TYPE_17__ {TYPE_2__ file; } ;
typedef TYPE_6__ ngx_http_mp4_file_t ;
struct TYPE_18__ {int last; int pos; } ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_14__ {TYPE_7__* buf; } ;


 scalar_t__ NGX_ERROR ;
 size_t NGX_HTTP_MP4_STTS_ATOM ;
 size_t NGX_HTTP_MP4_STTS_DATA ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_mp4_crop_stts_data (TYPE_6__*,TYPE_5__*,int) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;
 int ngx_mp4_set_32value (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_update_stts_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak)
{
    size_t atom_size;
    ngx_buf_t *atom, *data;
    ngx_mp4_stts_atom_t *stts_atom;






    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mp4 stts atom update");

    data = trak->out[NGX_HTTP_MP4_STTS_DATA].buf;

    if (data == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "no mp4 stts atoms were found in \"%s\"",
                      mp4->file.name.data);
        return NGX_ERROR;
    }

    if (ngx_http_mp4_crop_stts_data(mp4, trak, 1) != NGX_OK) {
        return NGX_ERROR;
    }

    if (ngx_http_mp4_crop_stts_data(mp4, trak, 0) != NGX_OK) {
        return NGX_ERROR;
    }

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "time-to-sample entries:%uD", trak->time_to_sample_entries);

    atom_size = sizeof(ngx_mp4_stts_atom_t) + (data->last - data->pos);
    trak->size += atom_size;

    atom = trak->out[NGX_HTTP_MP4_STTS_ATOM].buf;
    stts_atom = (ngx_mp4_stts_atom_t *) atom->pos;
    ngx_mp4_set_32value(stts_atom->size, atom_size);
    ngx_mp4_set_32value(stts_atom->entries, trak->time_to_sample_entries);

    return NGX_OK;
}
