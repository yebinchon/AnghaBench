
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_10__ {int directio; int alignment; int unaligned; int * buf; int pool; TYPE_3__ bufs; TYPE_1__* in; } ;
typedef TYPE_4__ ngx_output_chain_ctx_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int file_pos; TYPE_2__* file; } ;
typedef TYPE_5__ ngx_buf_t ;
struct TYPE_8__ {int directio; } ;
struct TYPE_7__ {TYPE_5__* buf; } ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_OK ;
 int * ngx_create_temp_buf (int ,size_t) ;

__attribute__((used)) static ngx_int_t
ngx_output_chain_align_file_buf(ngx_output_chain_ctx_t *ctx, off_t bsize)
{
    size_t size;
    ngx_buf_t *in;

    in = ctx->in->buf;

    if (in->file == ((void*)0) || !in->file->directio) {
        return NGX_DECLINED;
    }

    ctx->directio = 1;

    size = (size_t) (in->file_pos - (in->file_pos & ~(ctx->alignment - 1)));

    if (size == 0) {

        if (bsize >= (off_t) ctx->bufs.size) {
            return NGX_DECLINED;
        }

        size = (size_t) bsize;

    } else {
        size = (size_t) ctx->alignment - size;

        if ((off_t) size > bsize) {
            size = (size_t) bsize;
        }
    }

    ctx->buf = ngx_create_temp_buf(ctx->pool, size);
    if (ctx->buf == ((void*)0)) {
        return NGX_ERROR;
    }
    return NGX_OK;
}
