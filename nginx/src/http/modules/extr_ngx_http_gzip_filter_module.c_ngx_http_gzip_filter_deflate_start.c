
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_14__ {TYPE_3__* opaque; int zfree; int zalloc; } ;
struct TYPE_12__ {int flush; int out; int * last_out; int memlevel; scalar_t__ wbits; TYPE_9__ zstream; int * preallocated; int * free_mem; int allocated; } ;
typedef TYPE_3__ ngx_http_gzip_ctx_t ;
struct TYPE_13__ {scalar_t__ level; } ;
typedef TYPE_4__ ngx_http_gzip_conf_t ;
struct TYPE_10__ {int log; } ;


 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int deflateInit2 (TYPE_9__*,int,int ,scalar_t__,int ,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_gzip_filter_alloc ;
 int ngx_http_gzip_filter_free ;
 int ngx_http_gzip_filter_module ;
 int ngx_log_error (int ,int ,int ,char*,int) ;
 int * ngx_palloc (int ,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_gzip_filter_deflate_start(ngx_http_request_t *r,
    ngx_http_gzip_ctx_t *ctx)
{
    int rc;
    ngx_http_gzip_conf_t *conf;

    conf = ngx_http_get_module_loc_conf(r, ngx_http_gzip_filter_module);

    ctx->preallocated = ngx_palloc(r->pool, ctx->allocated);
    if (ctx->preallocated == ((void*)0)) {
        return NGX_ERROR;
    }

    ctx->free_mem = ctx->preallocated;

    ctx->zstream.zalloc = ngx_http_gzip_filter_alloc;
    ctx->zstream.zfree = ngx_http_gzip_filter_free;
    ctx->zstream.opaque = ctx;

    rc = deflateInit2(&ctx->zstream, (int) conf->level, Z_DEFLATED,
                      ctx->wbits + 16, ctx->memlevel, Z_DEFAULT_STRATEGY);

    if (rc != Z_OK) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "deflateInit2() failed: %d", rc);
        return NGX_ERROR;
    }

    ctx->last_out = &ctx->out;
    ctx->flush = Z_NO_FLUSH;

    return NGX_OK;
}
