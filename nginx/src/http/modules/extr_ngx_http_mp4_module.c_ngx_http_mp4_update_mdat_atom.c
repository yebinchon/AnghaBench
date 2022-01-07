
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u_char ;
typedef int off_t ;
typedef int ngx_mp4_atom_header_t ;
typedef int ngx_mp4_atom_header64_t ;
struct TYPE_11__ {int temporary; int * last; int * pos; } ;
struct TYPE_9__ {int log; } ;
struct TYPE_8__ {TYPE_1__* buf; } ;
struct TYPE_10__ {int content_length; TYPE_5__ mdat_atom_buf; int * mdat_atom_header; TYPE_3__ file; TYPE_2__ mdat_data; } ;
typedef TYPE_4__ ngx_http_mp4_file_t ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_7__ {int file_pos; int file_last; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_log_debug2 (int ,int ,int ,char*,int,int) ;
 int ngx_mp4_set_32value (int *,scalar_t__) ;
 int ngx_mp4_set_64value (int *,int) ;
 int ngx_mp4_set_atom_name (int *,char,char,char,char) ;

__attribute__((used)) static size_t
ngx_http_mp4_update_mdat_atom(ngx_http_mp4_file_t *mp4, off_t start_offset,
    off_t end_offset)
{
    off_t atom_data_size;
    u_char *atom_header;
    uint32_t atom_header_size;
    uint64_t atom_size;
    ngx_buf_t *atom;

    atom_data_size = end_offset - start_offset;
    mp4->mdat_data.buf->file_pos = start_offset;
    mp4->mdat_data.buf->file_last = end_offset;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0,
                   "mdat new offset @%O:%O", start_offset, atom_data_size);

    atom_header = mp4->mdat_atom_header;

    if ((uint64_t) atom_data_size
        > (uint64_t) 0xffffffff - sizeof(ngx_mp4_atom_header_t))
    {
        atom_size = 1;
        atom_header_size = sizeof(ngx_mp4_atom_header64_t);
        ngx_mp4_set_64value(atom_header + sizeof(ngx_mp4_atom_header_t),
                            sizeof(ngx_mp4_atom_header64_t) + atom_data_size);
    } else {
        atom_size = sizeof(ngx_mp4_atom_header_t) + atom_data_size;
        atom_header_size = sizeof(ngx_mp4_atom_header_t);
    }

    mp4->content_length += atom_header_size + atom_data_size;

    ngx_mp4_set_32value(atom_header, atom_size);
    ngx_mp4_set_atom_name(atom_header, 'm', 'd', 'a', 't');

    atom = &mp4->mdat_atom_buf;
    atom->temporary = 1;
    atom->pos = atom_header;
    atom->last = atom_header + atom_header_size;

    return atom_header_size;
}
