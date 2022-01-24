#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  hw_pool; int /*<<< orphan*/  av_device_ref; int /*<<< orphan*/  queue; } ;
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__* hwctx; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_4__ {int width; int height; } ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_2__ AVHWFramesContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_NV12 ; 
 int /*<<< orphan*/  IMGFMT_VAAPI ; 
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct mp_image *FUNC9(struct mp_filter *vf)
{
    struct priv *p = vf->priv;

    struct mp_image *fmt = FUNC7(p->queue);
    if (!fmt || !fmt->hwctx)
        return NULL;

    AVHWFramesContext *hw_frames = (void *)fmt->hwctx->data;
    // VAAPI requires the full surface size to match for input and output.
    int src_w = hw_frames->width;
    int src_h = hw_frames->height;

    if (!FUNC8(&p->hw_pool, p->av_device_ref,
                                     IMGFMT_VAAPI, IMGFMT_NV12, src_w, src_h))
    {
        FUNC0(vf, "Failed to create hw pool.\n");
        return NULL;
    }

    AVFrame *av_frame = FUNC2();
    if (!av_frame)
        FUNC1();
    if (FUNC4(p->hw_pool, av_frame, 0) < 0) {
        FUNC0(vf, "Failed to allocate frame from hw pool.\n");
        FUNC3(&av_frame);
        return NULL;
    }
    struct mp_image *img = FUNC5(av_frame);
    FUNC3(&av_frame);
    if (!img) {
        FUNC0(vf, "Unknown error.\n");
        return NULL;
    }
    FUNC6(img, fmt->w, fmt->h);
    return img;
}