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
struct mp_image_pool {int dummy; } ;
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* hwctx; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ AVHWFramesContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*,struct mp_image*) ; 
 struct mp_image* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mp_image*) ; 
 struct mp_image* FUNC7 (struct mp_image_pool*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct mp_image*) ; 
 int /*<<< orphan*/ * FUNC10 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_image**) ; 

struct mp_image *FUNC12(struct mp_image *src,
                                      struct mp_image_pool *swpool)
{
    int imgfmt = FUNC6(src);
    if (!imgfmt)
        return NULL;

    FUNC0(src->hwctx);
    AVHWFramesContext *fctx = (void *)src->hwctx->data;

    struct mp_image *dst =
        FUNC7(swpool, imgfmt, fctx->width, fctx->height);
    if (!dst)
        return NULL;

    // Target image must be writable, so unref it.
    AVFrame *dstav = FUNC10(dst);
    if (!dstav)
        return NULL;

    AVFrame *srcav = FUNC9(src);
    if (!srcav) {
        FUNC2(dstav);
        return NULL;
    }

    int res = FUNC3(dstav, srcav, 0);
    FUNC1(&srcav);
    dst = FUNC5(dstav);
    FUNC1(&dstav);
    if (res >= 0 && dst) {
        FUNC8(dst, src->w, src->h);
        FUNC4(dst, src);
    } else {
        FUNC11(&dst);
    }
    return dst;
}