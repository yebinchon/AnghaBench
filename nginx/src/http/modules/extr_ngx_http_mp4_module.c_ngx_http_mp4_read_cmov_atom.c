
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int data; } ;
struct TYPE_6__ {TYPE_1__ name; int log; } ;
struct TYPE_7__ {TYPE_2__ file; } ;
typedef TYPE_3__ ngx_http_mp4_file_t ;


 int NGX_ERROR ;
 int NGX_LOG_ERR ;
 int ngx_log_error (int ,int ,int ,char*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_mp4_read_cmov_atom(ngx_http_mp4_file_t *mp4, uint64_t atom_data_size)
{
    ngx_log_error(NGX_LOG_ERR, mp4->file.log, 0,
                  "\"%s\" mp4 compressed moov atom (cmov) is not supported",
                  mp4->file.name.data);

    return NGX_ERROR;
}
