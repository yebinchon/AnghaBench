
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {scalar_t__ offset; int nelts; } ;
typedef TYPE_2__ ngx_rtmp_flv_index_t ;
struct TYPE_9__ {scalar_t__ offset; TYPE_1__* link; } ;
typedef TYPE_3__ ngx_rtmp_amf_ctx_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ last; scalar_t__ pos; } ;
typedef TYPE_4__ ngx_buf_t ;
struct TYPE_7__ {TYPE_4__* buf; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_rtmp_rmemcpy (int *,scalar_t__,int) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_flv_fill_index(ngx_rtmp_amf_ctx_t *ctx, ngx_rtmp_flv_index_t *idx)
{
    uint32_t nelts;
    ngx_buf_t *b;





    b = ctx->link->buf;

    if (b->last - b->pos < (ngx_int_t) ctx->offset + 4) {
        return NGX_ERROR;
    }

    ngx_rtmp_rmemcpy(&nelts, b->pos + ctx->offset, 4);

    idx->nelts = nelts;
    idx->offset = ctx->offset + 4;

    return NGX_OK;
}
