
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_char ;
typedef int ngx_mp4_atom_header_t ;
typedef int ngx_int_t ;
struct TYPE_15__ {int temporary; int * last; int * pos; } ;
struct TYPE_13__ {TYPE_1__* out; TYPE_5__ minf_atom_buf; } ;
typedef TYPE_3__ ngx_http_mp4_trak_t ;
struct TYPE_12__ {int log; } ;
struct TYPE_14__ {TYPE_2__ file; } ;
typedef TYPE_4__ ngx_http_mp4_file_t ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_11__ {TYPE_5__* buf; } ;


 size_t NGX_HTTP_MP4_MINF_ATOM ;
 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_mp4_minf_atoms ;
 int ngx_http_mp4_read_atom (TYPE_4__*,int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int * ngx_mp4_atom_header (TYPE_4__*) ;
 TYPE_3__* ngx_mp4_last_trak (TYPE_4__*) ;
 int ngx_mp4_set_atom_name (int *,char,char,char,float) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_read_minf_atom(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    u_char *atom_header;
    ngx_buf_t *atom;
    ngx_http_mp4_trak_t *trak;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, mp4->file.log, 0, "process minf atom");

    atom_header = ngx_mp4_atom_header(mp4);
    ngx_mp4_set_atom_name(atom_header, 'm', 'i', 'n', 'f');

    trak = ngx_mp4_last_trak(mp4);

    atom = &trak->minf_atom_buf;
    atom->temporary = 1;
    atom->pos = atom_header;
    atom->last = atom_header + sizeof(ngx_mp4_atom_header_t);

    trak->out[NGX_HTTP_MP4_MINF_ATOM].buf = atom;

    return ngx_http_mp4_read_atom(mp4, ngx_http_mp4_minf_atoms, atom_data_size);
}
