
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
struct TYPE_26__ {int * data; int handler; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_27__ {int pool; TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_28__ {int angle; int max_width; int max_height; int image; int type; int force; } ;
typedef TYPE_4__ ngx_http_image_filter_ctx_t ;
struct TYPE_29__ {scalar_t__ filter; scalar_t__ interlace; int sharpen; int shcv; scalar_t__ transparency; } ;
typedef TYPE_5__ ngx_http_image_filter_conf_t ;
struct TYPE_30__ {int memory; int last_buf; int * last; int * pos; } ;
typedef TYPE_6__ ngx_buf_t ;
typedef int * gdImagePtr ;
struct TYPE_25__ {int log; } ;


 scalar_t__ NGX_HTTP_IMAGE_CROP ;
 scalar_t__ NGX_HTTP_IMAGE_RESIZE ;
 scalar_t__ NGX_HTTP_IMAGE_ROTATE ;
 int NGX_LOG_DEBUG_HTTP ;
 int gdFree (int *) ;
 int gdImageAlphaBlending (int *,int ) ;
 int gdImageBlue (int *,int) ;
 int gdImageColorExact (int *,int,int,int) ;
 int gdImageColorTransparent (int *,int) ;
 int gdImageColorsTotal (int *) ;
 int gdImageCopy (int *,int *,int ,int ,int,int,int,int) ;
 int gdImageCopyResampled (int *,int *,int ,int ,int ,int ,int,int,int,int) ;
 int gdImageCopyRotated (int *,int *,int,int,int ,int ,int,int,int) ;
 int gdImageDestroy (int *) ;
 int gdImageGetTransparent (int *) ;
 int gdImageGreen (int *,int) ;
 int gdImageInterlace (int *,int) ;
 int gdImageRed (int *,int) ;
 int gdImageSX (int *) ;
 int gdImageSY (int *) ;
 int gdImageSaveAlpha (int *,int) ;
 int gdImageSharpen (int *,int) ;
 int gdImageTrueColorToPalette (int *,int,int) ;
 TYPE_6__* ngx_calloc_buf (int ) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 TYPE_6__* ngx_http_image_asis (TYPE_3__*,TYPE_4__*) ;
 int ngx_http_image_cleanup ;
 int ngx_http_image_filter_get_value (TYPE_3__*,int ,int ) ;
 int ngx_http_image_filter_module ;
 int ngx_http_image_length (TYPE_3__*,TYPE_6__*) ;
 int * ngx_http_image_new (TYPE_3__*,int,int,int) ;
 int * ngx_http_image_out (TYPE_3__*,int ,int *,int*) ;
 int * ngx_http_image_source (TYPE_3__*,TYPE_4__*) ;
 int ngx_http_weak_etag (TYPE_3__*) ;
 int ngx_log_debug3 (int ,int ,int ,char*,int,int,int) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,int) ;
 int ngx_pfree (int ,int ) ;
 TYPE_2__* ngx_pool_cleanup_add (int ,int ) ;

__attribute__((used)) static ngx_buf_t *
ngx_http_image_resize(ngx_http_request_t *r, ngx_http_image_filter_ctx_t *ctx)
{
    int sx, sy, dx, dy, ox, oy, ax, ay, size,
                                   colors, palette, transparent, sharpen,
                                   red, green, blue, t;
    u_char *out;
    ngx_buf_t *b;
    ngx_uint_t resize;
    gdImagePtr src, dst;
    ngx_pool_cleanup_t *cln;
    ngx_http_image_filter_conf_t *conf;

    src = ngx_http_image_source(r, ctx);

    if (src == ((void*)0)) {
        return ((void*)0);
    }

    sx = gdImageSX(src);
    sy = gdImageSY(src);

    conf = ngx_http_get_module_loc_conf(r, ngx_http_image_filter_module);

    if (!ctx->force
        && ctx->angle == 0
        && (ngx_uint_t) sx <= ctx->max_width
        && (ngx_uint_t) sy <= ctx->max_height)
    {
        gdImageDestroy(src);
        return ngx_http_image_asis(r, ctx);
    }

    colors = gdImageColorsTotal(src);

    if (colors && conf->transparency) {
        transparent = gdImageGetTransparent(src);

        if (transparent != -1) {
            palette = colors;
            red = gdImageRed(src, transparent);
            green = gdImageGreen(src, transparent);
            blue = gdImageBlue(src, transparent);

            goto transparent;
        }
    }

    palette = 0;
    transparent = -1;
    red = 0;
    green = 0;
    blue = 0;

transparent:

    gdImageColorTransparent(src, -1);

    dx = sx;
    dy = sy;

    if (conf->filter == NGX_HTTP_IMAGE_RESIZE) {

        if ((ngx_uint_t) dx > ctx->max_width) {
            dy = dy * ctx->max_width / dx;
            dy = dy ? dy : 1;
            dx = ctx->max_width;
        }

        if ((ngx_uint_t) dy > ctx->max_height) {
            dx = dx * ctx->max_height / dy;
            dx = dx ? dx : 1;
            dy = ctx->max_height;
        }

        resize = 1;

    } else if (conf->filter == NGX_HTTP_IMAGE_ROTATE) {

        resize = 0;

    } else {

        resize = 0;

        if ((double) dx / dy < (double) ctx->max_width / ctx->max_height) {
            if ((ngx_uint_t) dx > ctx->max_width) {
                dy = dy * ctx->max_width / dx;
                dy = dy ? dy : 1;
                dx = ctx->max_width;
                resize = 1;
            }

        } else {
            if ((ngx_uint_t) dy > ctx->max_height) {
                dx = dx * ctx->max_height / dy;
                dx = dx ? dx : 1;
                dy = ctx->max_height;
                resize = 1;
            }
        }
    }

    if (resize) {
        dst = ngx_http_image_new(r, dx, dy, palette);
        if (dst == ((void*)0)) {
            gdImageDestroy(src);
            return ((void*)0);
        }

        if (colors == 0) {
            gdImageSaveAlpha(dst, 1);
            gdImageAlphaBlending(dst, 0);
        }

        gdImageCopyResampled(dst, src, 0, 0, 0, 0, dx, dy, sx, sy);

        if (colors) {
            gdImageTrueColorToPalette(dst, 1, 256);
        }

        gdImageDestroy(src);

    } else {
        dst = src;
    }

    if (ctx->angle) {
        src = dst;

        ax = (dx % 2 == 0) ? 1 : 0;
        ay = (dy % 2 == 0) ? 1 : 0;

        switch (ctx->angle) {

        case 90:
        case 270:
            dst = ngx_http_image_new(r, dy, dx, palette);
            if (dst == ((void*)0)) {
                gdImageDestroy(src);
                return ((void*)0);
            }
            if (ctx->angle == 90) {
                ox = dy / 2 + ay;
                oy = dx / 2 - ax;

            } else {
                ox = dy / 2 - ay;
                oy = dx / 2 + ax;
            }

            gdImageCopyRotated(dst, src, ox, oy, 0, 0,
                               dx + ax, dy + ay, ctx->angle);
            gdImageDestroy(src);

            t = dx;
            dx = dy;
            dy = t;
            break;

        case 180:
            dst = ngx_http_image_new(r, dx, dy, palette);
            if (dst == ((void*)0)) {
                gdImageDestroy(src);
                return ((void*)0);
            }
            gdImageCopyRotated(dst, src, dx / 2 - ax, dy / 2 - ay, 0, 0,
                               dx + ax, dy + ay, ctx->angle);
            gdImageDestroy(src);
            break;
        }
    }

    if (conf->filter == NGX_HTTP_IMAGE_CROP) {

        src = dst;

        if ((ngx_uint_t) dx > ctx->max_width) {
            ox = dx - ctx->max_width;

        } else {
            ox = 0;
        }

        if ((ngx_uint_t) dy > ctx->max_height) {
            oy = dy - ctx->max_height;

        } else {
            oy = 0;
        }

        if (ox || oy) {

            dst = ngx_http_image_new(r, dx - ox, dy - oy, colors);

            if (dst == ((void*)0)) {
                gdImageDestroy(src);
                return ((void*)0);
            }

            ox /= 2;
            oy /= 2;

            ngx_log_debug4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "image crop: %d x %d @ %d x %d",
                           dx, dy, ox, oy);

            if (colors == 0) {
                gdImageSaveAlpha(dst, 1);
                gdImageAlphaBlending(dst, 0);
            }

            gdImageCopy(dst, src, 0, 0, ox, oy, dx - ox, dy - oy);

            if (colors) {
                gdImageTrueColorToPalette(dst, 1, 256);
            }

            gdImageDestroy(src);
        }
    }

    if (transparent != -1 && colors) {
        gdImageColorTransparent(dst, gdImageColorExact(dst, red, green, blue));
    }

    sharpen = ngx_http_image_filter_get_value(r, conf->shcv, conf->sharpen);
    if (sharpen > 0) {
        gdImageSharpen(dst, sharpen);
    }

    gdImageInterlace(dst, (int) conf->interlace);

    out = ngx_http_image_out(r, ctx->type, dst, &size);

    ngx_log_debug3(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "image: %d x %d %d", sx, sy, colors);

    gdImageDestroy(dst);
    ngx_pfree(r->pool, ctx->image);

    if (out == ((void*)0)) {
        return ((void*)0);
    }

    cln = ngx_pool_cleanup_add(r->pool, 0);
    if (cln == ((void*)0)) {
        gdFree(out);
        return ((void*)0);
    }

    b = ngx_calloc_buf(r->pool);
    if (b == ((void*)0)) {
        gdFree(out);
        return ((void*)0);
    }

    cln->handler = ngx_http_image_cleanup;
    cln->data = out;

    b->pos = out;
    b->last = out + size;
    b->memory = 1;
    b->last_buf = 1;

    ngx_http_image_length(r, b);
    ngx_http_weak_etag(r);

    return b;
}
