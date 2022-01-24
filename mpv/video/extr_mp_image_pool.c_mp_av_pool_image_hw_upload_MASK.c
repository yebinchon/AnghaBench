#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_image {scalar_t__ h; int /*<<< orphan*/  w; } ;
struct AVBufferRef {int dummy; } ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (struct AVBufferRef*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,struct mp_image*) ; 
 struct mp_image* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_image*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mp_image*) ; 

struct mp_image *FUNC8(struct AVBufferRef *hw_frames_ctx,
                                            struct mp_image *src)
{
    AVFrame *av_frame = FUNC0();
    if (!av_frame)
        return NULL;
    if (FUNC2(hw_frames_ctx, av_frame, 0) < 0) {
        FUNC1(&av_frame);
        return NULL;
    }
    struct mp_image *dst = FUNC4(av_frame);
    FUNC1(&av_frame);
    if (!dst)
        return NULL;

    if (dst->w < src->w || dst->h < src->h) {
        FUNC7(dst);
        return NULL;
    }

    FUNC6(dst, src->w, src->h);

    if (!FUNC5(dst, src)) {
        FUNC7(dst);
        return NULL;
    }

    FUNC3(dst, src);
    return dst;
}