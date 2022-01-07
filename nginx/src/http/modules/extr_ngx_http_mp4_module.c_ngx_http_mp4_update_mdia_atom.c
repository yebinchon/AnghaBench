
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_mp4_atom_header_t ;
struct TYPE_5__ {int pos; } ;
struct TYPE_4__ {int size; TYPE_2__ mdia_atom_buf; } ;
typedef TYPE_1__ ngx_http_mp4_trak_t ;
typedef int ngx_http_mp4_file_t ;
typedef TYPE_2__ ngx_buf_t ;


 int ngx_mp4_set_32value (int ,int) ;

__attribute__((used)) static void
ngx_http_mp4_update_mdia_atom(ngx_http_mp4_file_t *mp4,
    ngx_http_mp4_trak_t *trak)
{
    ngx_buf_t *atom;

    trak->size += sizeof(ngx_mp4_atom_header_t);
    atom = &trak->mdia_atom_buf;
    ngx_mp4_set_32value(atom->pos, trak->size);
}
