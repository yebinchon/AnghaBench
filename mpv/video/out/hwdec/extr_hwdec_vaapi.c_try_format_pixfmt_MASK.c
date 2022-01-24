#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec {struct priv_owner* priv; } ;
struct priv_owner {int* formats; TYPE_1__* ctx; } ;
struct mp_image {int /*<<< orphan*/  params; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int sw_format; int width; int height; int /*<<< orphan*/  format; } ;
struct TYPE_8__ {int /*<<< orphan*/  av_device_ref; } ;
typedef  TYPE_2__ AVHWFramesContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_VAAPI ; 
 int /*<<< orphan*/  FUNC0 (struct priv_owner*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct mp_image*) ; 
 scalar_t__ FUNC11 (struct ra_hwdec*,struct mp_image*) ; 

__attribute__((used)) static void FUNC12(struct ra_hwdec *hw, enum AVPixelFormat pixfmt)
{
    struct priv_owner *p = hw->priv;

    int mp_fmt = FUNC9(pixfmt);
    if (!mp_fmt)
        return;

    int num_formats = 0;
    for (int n = 0; p->formats && p->formats[n]; n++) {
        if (p->formats[n] == mp_fmt)
            return; // already added
        num_formats += 1;
    }

    AVBufferRef *fref = NULL;
    struct mp_image *s = NULL;
    AVFrame *frame = NULL;
    fref = FUNC4(p->ctx->av_device_ref);
    if (!fref)
        goto err;
    AVHWFramesContext *fctx = (void *)fref->data;
    fctx->format = AV_PIX_FMT_VAAPI;
    fctx->sw_format = pixfmt;
    fctx->width = 128;
    fctx->height = 128;
    if (FUNC5(fref) < 0)
        goto err;
    frame = FUNC2();
    if (!frame)
        goto err;
    if (FUNC6(fref, frame, 0) < 0)
        goto err;
    s = FUNC7(frame);
    if (!s || !FUNC8(&s->params))
        goto err;
    if (FUNC11(hw, s)) {
        FUNC0(p, p->formats, num_formats, mp_fmt);
        FUNC0(p, p->formats, num_formats, 0); // terminate it
    }
err:
    FUNC10(s);
    FUNC3(&frame);
    FUNC1(&fref);
}