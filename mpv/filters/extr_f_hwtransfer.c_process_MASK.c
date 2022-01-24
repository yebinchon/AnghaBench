#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  hw_imgfmt; } ;
struct priv {int /*<<< orphan*/  hw_pool; int /*<<< orphan*/  last_sw_fmt; TYPE_1__ public; int /*<<< orphan*/  av_device_ctx; } ;
struct mp_image {int w; int h; int /*<<< orphan*/  imgfmt; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct priv* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mp_frame FUNC1 (scalar_t__,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*,char*) ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 struct mp_image* FUNC3 (int /*<<< orphan*/ ,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_filter*) ; 
 scalar_t__ FUNC5 (struct mp_frame) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct mp_filter *f)
{
    struct priv *p = f->priv;

    if (!FUNC7(f->ppins[1], f->ppins[0]))
        return;

    struct mp_frame frame = FUNC9(f->ppins[0]);
    if (FUNC5(frame)) {
        FUNC8(f->ppins[1], frame);
        return;
    }
    if (frame.type != MP_FRAME_VIDEO) {
        FUNC2(f, "unsupported frame type\n");
        goto error;
    }
    struct mp_image *src = frame.data;

    // As documented, just pass though HW frames.
    if (FUNC0(src->imgfmt)) {
        FUNC8(f->ppins[1], frame);
        return;
    }

    if (src->w % 2 || src->h % 2) {
        FUNC2(f, "non-mod 2 input frames unsupported\n");
        goto error;
    }

    if (!FUNC11(p, src->imgfmt)) {
        FUNC2(f, "no hw upload format found\n");
        goto error;
    }

    if (!FUNC10(&p->hw_pool, p->av_device_ctx,
                                     p->public.hw_imgfmt, p->last_sw_fmt,
                                     src->w, src->h))
    {
        FUNC2(f, "failed to create frame pool\n");
        goto error;
    }

    struct mp_image *dst = FUNC3(p->hw_pool, src);
    if (!dst)
        goto error;

    FUNC6(&frame);
    FUNC8(f->ppins[1], FUNC1(MP_FRAME_VIDEO, dst));

    return;

error:
    FUNC6(&frame);
    FUNC2(f, "failed to upload frame\n");
    FUNC4(f);
}