#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int ngx_uint_t ;
struct TYPE_26__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_27__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_28__ {int angle; int max_width; int max_height; int /*<<< orphan*/  image; int /*<<< orphan*/  type; int /*<<< orphan*/  force; } ;
typedef  TYPE_4__ ngx_http_image_filter_ctx_t ;
struct TYPE_29__ {scalar_t__ filter; scalar_t__ interlace; int /*<<< orphan*/  sharpen; int /*<<< orphan*/  shcv; scalar_t__ transparency; } ;
typedef  TYPE_5__ ngx_http_image_filter_conf_t ;
struct TYPE_30__ {int memory; int last_buf; int /*<<< orphan*/ * last; int /*<<< orphan*/ * pos; } ;
typedef  TYPE_6__ ngx_buf_t ;
typedef  int /*<<< orphan*/ * gdImagePtr ;
struct TYPE_25__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_IMAGE_CROP ; 
 scalar_t__ NGX_HTTP_IMAGE_RESIZE ; 
 scalar_t__ NGX_HTTP_IMAGE_ROTATE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_6__* FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC21 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_image_cleanup ; 
 int FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_image_filter_module ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC24 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/ * FUNC25 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC26 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_buf_t *
FUNC32(ngx_http_request_t *r, ngx_http_image_filter_ctx_t *ctx)
{
    int                            sx, sy, dx, dy, ox, oy, ax, ay, size,
                                   colors, palette, transparent, sharpen,
                                   red, green, blue, t;
    u_char                        *out;
    ngx_buf_t                     *b;
    ngx_uint_t                     resize;
    gdImagePtr                     src, dst;
    ngx_pool_cleanup_t            *cln;
    ngx_http_image_filter_conf_t  *conf;

    src = FUNC26(r, ctx);

    if (src == NULL) {
        return NULL;
    }

    sx = FUNC14(src);
    sy = FUNC15(src);

    conf = FUNC20(r, ngx_http_image_filter_module);

    if (!ctx->force
        && ctx->angle == 0
        && (ngx_uint_t) sx <= ctx->max_width
        && (ngx_uint_t) sy <= ctx->max_height)
    {
        FUNC9(src);
        return FUNC21(r, ctx);
    }

    colors = FUNC5(src);

    if (colors && conf->transparency) {
        transparent = FUNC10(src);

        if (transparent != -1) {
            palette = colors;
            red = FUNC13(src, transparent);
            green = FUNC11(src, transparent);
            blue = FUNC2(src, transparent);

            goto transparent;
        }
    }

    palette = 0;
    transparent = -1;
    red = 0;
    green = 0;
    blue = 0;

transparent:

    FUNC4(src, -1);

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

    } else { /* NGX_HTTP_IMAGE_CROP */

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
        dst = FUNC24(r, dx, dy, palette);
        if (dst == NULL) {
            FUNC9(src);
            return NULL;
        }

        if (colors == 0) {
            FUNC16(dst, 1);
            FUNC1(dst, 0);
        }

        FUNC7(dst, src, 0, 0, 0, 0, dx, dy, sx, sy);

        if (colors) {
            FUNC18(dst, 1, 256);
        }

        FUNC9(src);

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
            dst = FUNC24(r, dy, dx, palette);
            if (dst == NULL) {
                FUNC9(src);
                return NULL;
            }
            if (ctx->angle == 90) {
                ox = dy / 2 + ay;
                oy = dx / 2 - ax;

            } else {
                ox = dy / 2 - ay;
                oy = dx / 2 + ax;
            }

            FUNC8(dst, src, ox, oy, 0, 0,
                               dx + ax, dy + ay, ctx->angle);
            FUNC9(src);

            t = dx;
            dx = dy;
            dy = t;
            break;

        case 180:
            dst = FUNC24(r, dx, dy, palette);
            if (dst == NULL) {
                FUNC9(src);
                return NULL;
            }
            FUNC8(dst, src, dx / 2 - ax, dy / 2 - ay, 0, 0,
                               dx + ax, dy + ay, ctx->angle);
            FUNC9(src);
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

            dst = FUNC24(r, dx - ox, dy - oy, colors);

            if (dst == NULL) {
                FUNC9(src);
                return NULL;
            }

            ox /= 2;
            oy /= 2;

            FUNC29(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                           "image crop: %d x %d @ %d x %d",
                           dx, dy, ox, oy);

            if (colors == 0) {
                FUNC16(dst, 1);
                FUNC1(dst, 0);
            }

            FUNC6(dst, src, 0, 0, ox, oy, dx - ox, dy - oy);

            if (colors) {
                FUNC18(dst, 1, 256);
            }

            FUNC9(src);
        }
    }

    if (transparent != -1 && colors) {
        FUNC4(dst, FUNC3(dst, red, green, blue));
    }

    sharpen = FUNC22(r, conf->shcv, conf->sharpen);
    if (sharpen > 0) {
        FUNC17(dst, sharpen);
    }

    FUNC12(dst, (int) conf->interlace);

    out = FUNC25(r, ctx->type, dst, &size);

    FUNC28(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "image: %d x %d %d", sx, sy, colors);

    FUNC9(dst);
    FUNC30(r->pool, ctx->image);

    if (out == NULL) {
        return NULL;
    }

    cln = FUNC31(r->pool, 0);
    if (cln == NULL) {
        FUNC0(out);
        return NULL;
    }

    b = FUNC19(r->pool);
    if (b == NULL) {
        FUNC0(out);
        return NULL;
    }

    cln->handler = ngx_http_image_cleanup;
    cln->data = out;

    b->pos = out;
    b->last = out + size;
    b->memory = 1;
    b->last_buf = 1;

    FUNC23(r, b);
    FUNC27(r);

    return b;
}