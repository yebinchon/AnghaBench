#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_20__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_21__ {int angle; scalar_t__ max_width; scalar_t__ max_height; scalar_t__ width; scalar_t__ height; int /*<<< orphan*/  force; } ;
typedef  TYPE_3__ ngx_http_image_filter_ctx_t ;
struct TYPE_22__ {scalar_t__ filter; int /*<<< orphan*/  height; int /*<<< orphan*/  hcv; int /*<<< orphan*/  width; int /*<<< orphan*/  wcv; int /*<<< orphan*/  angle; int /*<<< orphan*/  acv; } ;
typedef  TYPE_4__ ngx_http_image_filter_conf_t ;
typedef  int /*<<< orphan*/  ngx_buf_t ;
struct TYPE_19__ {int /*<<< orphan*/  buffered; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_IMAGE_BUFFERED ; 
 scalar_t__ NGX_HTTP_IMAGE_ROTATE ; 
 scalar_t__ NGX_HTTP_IMAGE_SIZE ; 
 scalar_t__ NGX_OK ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 void* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_image_filter_module ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static ngx_buf_t *
FUNC7(ngx_http_request_t *r)
{
    ngx_int_t                      rc;
    ngx_http_image_filter_ctx_t   *ctx;
    ngx_http_image_filter_conf_t  *conf;

    r->connection->buffered &= ~NGX_HTTP_IMAGE_BUFFERED;

    ctx = FUNC0(r, ngx_http_image_filter_module);

    rc = FUNC6(r, ctx);

    conf = FUNC1(r, ngx_http_image_filter_module);

    if (conf->filter == NGX_HTTP_IMAGE_SIZE) {
        return FUNC4(r, rc == NGX_OK ? ctx : NULL);
    }

    ctx->angle = FUNC3(r, conf->acv, conf->angle);

    if (conf->filter == NGX_HTTP_IMAGE_ROTATE) {

        if (ctx->angle != 90 && ctx->angle != 180 && ctx->angle != 270) {
            return NULL;
        }

        return FUNC5(r, ctx);
    }

    ctx->max_width = FUNC3(r, conf->wcv, conf->width);
    if (ctx->max_width == 0) {
        return NULL;
    }

    ctx->max_height = FUNC3(r, conf->hcv,
                                                      conf->height);
    if (ctx->max_height == 0) {
        return NULL;
    }

    if (rc == NGX_OK
        && ctx->width <= ctx->max_width
        && ctx->height <= ctx->max_height
        && ctx->angle == 0
        && !ctx->force)
    {
        return FUNC2(r, ctx);
    }

    return FUNC5(r, ctx);
}