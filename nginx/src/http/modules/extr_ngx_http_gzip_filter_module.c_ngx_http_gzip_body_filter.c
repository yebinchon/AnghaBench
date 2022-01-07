
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int const ngx_int_t ;
struct TYPE_20__ {int pool; TYPE_1__* connection; scalar_t__ header_only; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_21__ {int done; int * preallocated; int zstream; scalar_t__ nomem; int * out; int ** last_out; scalar_t__ busy; int free; int in; scalar_t__ buffering; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
typedef int ngx_chain_t ;
typedef int ngx_buf_tag_t ;
struct TYPE_19__ {int buffered; int log; } ;


 int NGX_AGAIN ;
 int NGX_DECLINED ;

 int NGX_ERROR ;
 int NGX_HTTP_GZIP_BUFFERED ;
 int NGX_LOG_DEBUG_HTTP ;

 int deflateEnd (int *) ;
 int const ngx_chain_add_copy (int ,int *,int *) ;
 int ngx_chain_update_chains (int ,int *,scalar_t__*,int **,int ) ;
 TYPE_3__* ngx_http_get_module_ctx (TYPE_2__*,int ) ;
 int ngx_http_gzip_filter_add_data (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_gzip_filter_buffer (TYPE_3__*,int *) ;
 int ngx_http_gzip_filter_deflate (TYPE_2__*,TYPE_3__*) ;
 int const ngx_http_gzip_filter_deflate_start (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_gzip_filter_free_copy_buf (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_gzip_filter_get_buf (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_gzip_filter_module ;
 int ngx_http_next_body_filter (TYPE_2__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_pfree (int ,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_body_filter(ngx_http_request_t *r, ngx_chain_t *in)
{
    int rc;
    ngx_uint_t flush;
    ngx_chain_t *cl;
    ngx_http_gzip_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_gzip_filter_module);

    if (ctx == ((void*)0) || ctx->done || r->header_only) {
        return ngx_http_next_body_filter(r, in);
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http gzip filter");

    if (ctx->buffering) {
        if (in) {
            switch (ngx_http_gzip_filter_buffer(ctx, in)) {

            case 128:
                return 128;

            case 129:
                in = ((void*)0);
                break;

            default:
                goto failed;
            }

        } else {
            ctx->buffering = 0;
        }
    }

    if (ctx->preallocated == ((void*)0)) {
        if (ngx_http_gzip_filter_deflate_start(r, ctx) != 128) {
            goto failed;
        }
    }

    if (in) {
        if (ngx_chain_add_copy(r->pool, &ctx->in, in) != 128) {
            goto failed;
        }

        r->connection->buffered |= NGX_HTTP_GZIP_BUFFERED;
    }

    if (ctx->nomem) {



        if (ngx_http_next_body_filter(r, ((void*)0)) == NGX_ERROR) {
            goto failed;
        }

        cl = ((void*)0);

        ngx_chain_update_chains(r->pool, &ctx->free, &ctx->busy, &cl,
                                (ngx_buf_tag_t) &ngx_http_gzip_filter_module);
        ctx->nomem = 0;
        flush = 0;

    } else {
        flush = ctx->busy ? 1 : 0;
    }

    for ( ;; ) {



        for ( ;; ) {



            rc = ngx_http_gzip_filter_add_data(r, ctx);

            if (rc == NGX_DECLINED) {
                break;
            }

            if (rc == NGX_AGAIN) {
                continue;
            }




            rc = ngx_http_gzip_filter_get_buf(r, ctx);

            if (rc == NGX_DECLINED) {
                break;
            }

            if (rc == NGX_ERROR) {
                goto failed;
            }


            rc = ngx_http_gzip_filter_deflate(r, ctx);

            if (rc == 128) {
                break;
            }

            if (rc == NGX_ERROR) {
                goto failed;
            }


        }

        if (ctx->out == ((void*)0) && !flush) {
            ngx_http_gzip_filter_free_copy_buf(r, ctx);

            return ctx->busy ? NGX_AGAIN : 128;
        }

        rc = ngx_http_next_body_filter(r, ctx->out);

        if (rc == NGX_ERROR) {
            goto failed;
        }

        ngx_http_gzip_filter_free_copy_buf(r, ctx);

        ngx_chain_update_chains(r->pool, &ctx->free, &ctx->busy, &ctx->out,
                                (ngx_buf_tag_t) &ngx_http_gzip_filter_module);
        ctx->last_out = &ctx->out;

        ctx->nomem = 0;
        flush = 0;

        if (ctx->done) {
            return rc;
        }
    }



failed:

    ctx->done = 1;

    if (ctx->preallocated) {
        deflateEnd(&ctx->zstream);

        ngx_pfree(r->pool, ctx->preallocated);
    }

    ngx_http_gzip_filter_free_copy_buf(r, ctx);

    return NGX_ERROR;
}
