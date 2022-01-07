
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_3__* opaque; int zfree; int zalloc; scalar_t__ avail_in; int next_in; } ;
struct TYPE_9__ {int started; int flush; int out; int * last_out; TYPE_6__ zstream; } ;
typedef TYPE_3__ ngx_http_gunzip_ctx_t ;
struct TYPE_7__ {int log; } ;


 scalar_t__ MAX_WBITS ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_OK ;
 int Z_NO_FLUSH ;
 int Z_NULL ;
 int Z_OK ;
 int inflateInit2 (TYPE_6__*,scalar_t__) ;
 int ngx_http_gunzip_filter_alloc ;
 int ngx_http_gunzip_filter_free ;
 int ngx_log_error (int ,int ,int ,char*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_gunzip_filter_inflate_start(ngx_http_request_t *r,
    ngx_http_gunzip_ctx_t *ctx)
{
    int rc;

    ctx->zstream.next_in = Z_NULL;
    ctx->zstream.avail_in = 0;

    ctx->zstream.zalloc = ngx_http_gunzip_filter_alloc;
    ctx->zstream.zfree = ngx_http_gunzip_filter_free;
    ctx->zstream.opaque = ctx;


    rc = inflateInit2(&ctx->zstream, MAX_WBITS + 16);

    if (rc != Z_OK) {
        ngx_log_error(NGX_LOG_ALERT, r->connection->log, 0,
                      "inflateInit2() failed: %d", rc);
        return NGX_ERROR;
    }

    ctx->started = 1;

    ctx->last_out = &ctx->out;
    ctx->flush = Z_NO_FLUSH;

    return NGX_OK;
}
