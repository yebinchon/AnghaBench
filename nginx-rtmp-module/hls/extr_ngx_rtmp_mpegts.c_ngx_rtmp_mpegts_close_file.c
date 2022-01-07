
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int fd; int iv; int key; scalar_t__ buf; scalar_t__ size; scalar_t__ encrypt; } ;
typedef TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef int ngx_int_t ;


 int AES_ENCRYPT ;
 int AES_cbc_encrypt (scalar_t__,int *,int,int *,int ,int ) ;
 int NGX_ERROR ;
 int NGX_OK ;
 int ngx_close_file (int ) ;
 int ngx_memset (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ngx_write_fd (int ,int *,int) ;

ngx_int_t
ngx_rtmp_mpegts_close_file(ngx_rtmp_mpegts_file_t *file)
{
    u_char buf[16];
    ssize_t rc;

    if (file->encrypt) {
        ngx_memset(file->buf + file->size, 16 - file->size, 16 - file->size);

        AES_cbc_encrypt(file->buf, buf, 16, &file->key, file->iv, AES_ENCRYPT);

        rc = ngx_write_fd(file->fd, buf, 16);
        if (rc < 0) {
            return NGX_ERROR;
        }
    }

    ngx_close_file(file->fd);

    return NGX_OK;
}
