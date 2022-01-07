
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {size_t size; int * buf; int fd; int iv; int key; int log; int encrypt; } ;
typedef TYPE_1__ ngx_rtmp_mpegts_file_t ;
typedef int ngx_int_t ;
typedef int buf ;


 int AES_ENCRYPT ;
 int AES_cbc_encrypt (int *,int *,size_t,int *,int ,int ) ;
 int NGX_ERROR ;
 int NGX_LOG_DEBUG_CORE ;
 int NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_memcpy (int *,int *,size_t) ;
 scalar_t__ ngx_write_fd (int ,int *,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_mpegts_write_file(ngx_rtmp_mpegts_file_t *file, u_char *in,
    size_t in_size)
{
    u_char *out;
    size_t out_size, n;
    ssize_t rc;

    static u_char buf[1024];

    if (!file->encrypt) {
        ngx_log_debug1(NGX_LOG_DEBUG_CORE, file->log, 0,
                       "mpegts: write %uz bytes", in_size);

        rc = ngx_write_fd(file->fd, in, in_size);
        if (rc < 0) {
            return NGX_ERROR;
        }

        return NGX_OK;
    }



    ngx_log_debug1(NGX_LOG_DEBUG_CORE, file->log, 0,
                   "mpegts: write %uz encrypted bytes", in_size);

    out = buf;
    out_size = sizeof(buf);

    if (file->size > 0 && file->size + in_size >= 16) {
        ngx_memcpy(file->buf + file->size, in, 16 - file->size);

        in += 16 - file->size;
        in_size -= 16 - file->size;

        AES_cbc_encrypt(file->buf, out, 16, &file->key, file->iv, AES_ENCRYPT);

        out += 16;
        out_size -= 16;

        file->size = 0;
    }

    for ( ;; ) {
        n = in_size & ~0x0f;

        if (n > 0) {
            if (n > out_size) {
                n = out_size;
            }

            AES_cbc_encrypt(in, out, n, &file->key, file->iv, AES_ENCRYPT);

            in += n;
            in_size -= n;

        } else if (out == buf) {
            break;
        }

        rc = ngx_write_fd(file->fd, buf, out - buf + n);
        if (rc < 0) {
            return NGX_ERROR;
        }

        out = buf;
        out_size = sizeof(buf);
    }

    if (in_size) {
        ngx_memcpy(file->buf + file->size, in, in_size);
        file->size += in_size;
    }

    return NGX_OK;
}
