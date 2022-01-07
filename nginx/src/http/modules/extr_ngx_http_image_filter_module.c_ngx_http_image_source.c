
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {int type; int image; int length; } ;
typedef TYPE_3__ ngx_http_image_filter_ctx_t ;
typedef int * gdImagePtr ;
struct TYPE_6__ {int log; } ;






 int NGX_LOG_ERR ;
 int * gdImageCreateFromGifPtr (int ,int ) ;
 int * gdImageCreateFromJpegPtr (int ,int ) ;
 int * gdImageCreateFromPngPtr (int ,int ) ;
 int * gdImageCreateFromWebpPtr (int ,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static gdImagePtr
ngx_http_image_source(ngx_http_request_t *r, ngx_http_image_filter_ctx_t *ctx)
{
    char *failed;
    gdImagePtr img;

    img = ((void*)0);

    switch (ctx->type) {

    case 130:
        img = gdImageCreateFromJpegPtr(ctx->length, ctx->image);
        failed = "gdImageCreateFromJpegPtr() failed";
        break;

    case 131:
        img = gdImageCreateFromGifPtr(ctx->length, ctx->image);
        failed = "gdImageCreateFromGifPtr() failed";
        break;

    case 129:
        img = gdImageCreateFromPngPtr(ctx->length, ctx->image);
        failed = "gdImageCreateFromPngPtr() failed";
        break;

    case 128:




        failed = "nginx was built without GD WebP support";

        break;

    default:
        failed = "unknown image type";
        break;
    }

    if (img == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0, failed);
    }

    return img;
}
