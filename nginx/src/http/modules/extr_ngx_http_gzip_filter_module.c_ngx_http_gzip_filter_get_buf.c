
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int ngx_int_t ;
struct TYPE_16__ {int pool; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {int avail_out; int next_out; } ;
struct TYPE_17__ {scalar_t__ bufs; int nomem; TYPE_1__ zstream; TYPE_12__* out_buf; TYPE_6__* free; } ;
typedef TYPE_4__ ngx_http_gzip_ctx_t ;
struct TYPE_15__ {scalar_t__ num; int size; } ;
struct TYPE_18__ {TYPE_2__ bufs; } ;
typedef TYPE_5__ ngx_http_gzip_conf_t ;
struct TYPE_19__ {struct TYPE_19__* next; TYPE_12__* buf; } ;
typedef TYPE_6__ ngx_chain_t ;
typedef scalar_t__ ngx_buf_tag_t ;
struct TYPE_13__ {int recycled; int pos; scalar_t__ tag; } ;


 int NGX_DECLINED ;
 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_12__* ngx_create_temp_buf (int ,int ) ;
 int ngx_free_chain (int ,TYPE_6__*) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_gzip_filter_module ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_filter_get_buf(ngx_http_request_t *r, ngx_http_gzip_ctx_t *ctx)
{
    ngx_chain_t *cl;
    ngx_http_gzip_conf_t *conf;

    if (ctx->zstream.avail_out) {
        return NGX_OK;
    }

    conf = ngx_http_get_module_loc_conf(r, ngx_http_gzip_filter_module);

    if (ctx->free) {

        cl = ctx->free;
        ctx->out_buf = cl->buf;
        ctx->free = cl->next;

        ngx_free_chain(r->pool, cl);

    } else if (ctx->bufs < conf->bufs.num) {

        ctx->out_buf = ngx_create_temp_buf(r->pool, conf->bufs.size);
        if (ctx->out_buf == ((void*)0)) {
            return NGX_ERROR;
        }

        ctx->out_buf->tag = (ngx_buf_tag_t) &ngx_http_gzip_filter_module;
        ctx->out_buf->recycled = 1;
        ctx->bufs++;

    } else {
        ctx->nomem = 1;
        return NGX_DECLINED;
    }

    ctx->zstream.next_out = ctx->out_buf->pos;
    ctx->zstream.avail_out = conf->bufs.size;

    return NGX_OK;
}
