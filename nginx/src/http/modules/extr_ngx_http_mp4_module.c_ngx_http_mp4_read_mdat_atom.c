
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


typedef scalar_t__ uint64_t ;
typedef int ngx_int_t ;
struct TYPE_14__ {scalar_t__ nelts; } ;
struct TYPE_13__ {TYPE_7__* buf; } ;
struct TYPE_12__ {TYPE_4__* next; int * buf; } ;
struct TYPE_10__ {int log; } ;
struct TYPE_16__ {int in_file; int last_buf; int last_in_chain; scalar_t__ file_last; TYPE_1__* file; } ;
struct TYPE_15__ {scalar_t__ end; scalar_t__ offset; TYPE_5__ trak; TYPE_4__ mdat_data; TYPE_3__ mdat_atom; int mdat_atom_buf; TYPE_2__* request; TYPE_1__ file; TYPE_7__ mdat_data_buf; } ;
typedef TYPE_6__ ngx_http_mp4_file_t ;
typedef TYPE_7__ ngx_buf_t ;
struct TYPE_11__ {struct TYPE_11__* main; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_mp4_atom_next (TYPE_6__*,scalar_t__) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_read_mdat_atom(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    ngx_buf_t *data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "mp4 mdat atom");

    data = &mp4->mdat_data_buf;
    data->file = &mp4->file;
    data->in_file = 1;
    data->last_buf = (mp4->request == mp4->request->main) ? 1 : 0;
    data->last_in_chain = 1;
    data->file_last = mp4->offset + atom_data_size;

    mp4->mdat_atom.buf = &mp4->mdat_atom_buf;
    mp4->mdat_atom.next = &mp4->mdat_data;
    mp4->mdat_data.buf = data;

    if (mp4->trak.nelts) {

        mp4->offset = mp4->end;

    } else {
        ngx_mp4_atom_next(mp4, atom_data_size);
    }

    return NGX_OK;
}
