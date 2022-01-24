#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ method; } ;
struct xvctx {scalar_t__ image_height; scalar_t__ image_width; scalar_t__ max_width; scalar_t__ max_height; scalar_t__ xv_format; int formats; int num_buffers; int cfg_buffers; int /*<<< orphan*/  xv_port; scalar_t__ current_ip_buf; scalar_t__ current_buf; int /*<<< orphan*/  xv_colorkey; TYPE_2__ xv_ck_info; void* f_gc; void* vo_gc; TYPE_1__* fo; int /*<<< orphan*/  image_format; int /*<<< orphan*/  original_image; } ;
struct vo_x11_state {int /*<<< orphan*/  window; int /*<<< orphan*/  display; } ;
struct vo {struct xvctx* priv; struct vo_x11_state* x11; } ;
struct TYPE_6__ {scalar_t__ space; } ;
struct mp_image_params {scalar_t__ h; scalar_t__ w; TYPE_3__ color; int /*<<< orphan*/  imgfmt; } ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ format; } ;

/* Variables and functions */
 scalar_t__ CK_METHOD_BACKGROUND ; 
 scalar_t__ MP_CSP_BT_709 ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,char*,scalar_t__,...) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ XvPacked ; 
 int /*<<< orphan*/  FUNC6 (struct vo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*) ; 
 int /*<<< orphan*/  FUNC11 (struct vo*) ; 
 int /*<<< orphan*/  FUNC12 (struct vo*) ; 
 int /*<<< orphan*/  FUNC13 (struct vo*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC14(struct vo *vo, struct mp_image_params *params)
{
    struct vo_x11_state *x11 = vo->x11;
    struct xvctx *ctx = vo->priv;
    int i;

    FUNC9(&ctx->original_image);

    ctx->image_height = params->h;
    ctx->image_width  = params->w;
    ctx->image_format = params->imgfmt;

    if ((ctx->max_width != 0 && ctx->max_height != 0)
        && (ctx->image_width > ctx->max_width
            || ctx->image_height > ctx->max_height)) {
        FUNC0(vo, "Source image dimensions are too high: %ux%u (maximum is %ux%u)\n",
               ctx->image_width, ctx->image_height, ctx->max_width,
               ctx->max_height);
        return -1;
    }

    /* check image formats */
    ctx->xv_format = 0;
    for (i = 0; i < ctx->formats; i++) {
        FUNC2(vo, "Xvideo image format: 0x%x (%4.4s) %s\n",
                   ctx->fo[i].id, (char *) &ctx->fo[i].id,
                   (ctx->fo[i].format == XvPacked) ? "packed" : "planar");
        if (ctx->fo[i].id == FUNC8(ctx->image_format))
            ctx->xv_format = ctx->fo[i].id;
    }
    if (!ctx->xv_format)
        return -1;

    FUNC12(vo);

    if (!ctx->f_gc && !ctx->vo_gc) {
        ctx->f_gc = FUNC3(x11->display, x11->window, 0, 0);
        ctx->vo_gc = FUNC3(x11->display, x11->window, 0, NULL);
        FUNC4(x11->display, ctx->f_gc, 0);
    }

    if (ctx->xv_ck_info.method == CK_METHOD_BACKGROUND)
        FUNC5(x11->display, x11->window, ctx->xv_colorkey);

    FUNC2(vo, "using Xvideo port %d for hw scaling\n", ctx->xv_port);

    // In case config has been called before
    for (i = 0; i < ctx->num_buffers; i++)
        FUNC7(vo, i);

    ctx->num_buffers = ctx->cfg_buffers;

    for (i = 0; i < ctx->num_buffers; i++) {
        if (!FUNC6(vo, i)) {
            FUNC1(vo, "could not allocate Xv image data\n");
            return -1;
        }
    }

    ctx->current_buf = 0;
    ctx->current_ip_buf = 0;

    int is_709 = params->color.space == MP_CSP_BT_709;
    FUNC13(vo, ctx->xv_port, "bt_709", is_709 * 200 - 100);
    FUNC10(vo);

    FUNC11(vo);

    return 0;
}