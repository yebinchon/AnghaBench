
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
typedef int ngx_mp4_atom_header_t ;
typedef int ngx_int_t ;
struct TYPE_13__ {TYPE_6__* buf; } ;
struct TYPE_15__ {int temporary; int * last; int * pos; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_11__ {TYPE_1__ name; int log; } ;
struct TYPE_14__ {scalar_t__ buffer_end; size_t ftyp_size; size_t content_length; TYPE_4__ ftyp_atom; TYPE_6__ ftyp_atom_buf; TYPE_3__* request; TYPE_2__ file; } ;
typedef TYPE_5__ ngx_http_mp4_file_t ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_12__ {int pool; } ;


 int NGX_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int NGX_OK ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int) ;
 int ngx_memcpy (int *,scalar_t__,size_t) ;
 scalar_t__ ngx_mp4_atom_data (TYPE_5__*) ;
 int ngx_mp4_atom_next (TYPE_5__*,int) ;
 int ngx_mp4_set_32value (int *,size_t) ;
 int ngx_mp4_set_atom_name (int *,float,char,char,char) ;
 int * ngx_palloc (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_read_ftyp_atom(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    u_char *ftyp_atom;
    size_t atom_size;
    ngx_buf_t *atom;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "mp4 ftyp atom");

    if (atom_data_size > 1024
        || ngx_mp4_atom_data(mp4) + (size_t) atom_data_size > mp4->buffer_end)
    {
        ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                      "\"%s\" mp4 ftyp atom is too large:%uL",
                      mp4->file.name.data, atom_data_size);
        return NGX_ERROR;
    }

    atom_size = sizeof(ngx_mp4_atom_header_t) + (size_t) atom_data_size;

    ftyp_atom = ngx_palloc(mp4->request->pool, atom_size);
    if (ftyp_atom == ((void*)0)) {
        return NGX_ERROR;
    }

    ngx_mp4_set_32value(ftyp_atom, atom_size);
    ngx_mp4_set_atom_name(ftyp_atom, 'f', 't', 'y', 'p');





    ngx_memcpy(ftyp_atom + sizeof(ngx_mp4_atom_header_t),
               ngx_mp4_atom_data(mp4), (size_t) atom_data_size);

    atom = &mp4->ftyp_atom_buf;
    atom->temporary = 1;
    atom->pos = ftyp_atom;
    atom->last = ftyp_atom + atom_size;

    mp4->ftyp_atom.buf = atom;
    mp4->ftyp_size = atom_size;
    mp4->content_length = atom_size;

    ngx_mp4_atom_next(mp4, atom_data_size);

    return NGX_OK;
}
