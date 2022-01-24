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
struct mp_image {int /*<<< orphan*/  hwctx; } ;
struct mp_hwdownload {int /*<<< orphan*/  pool; } ;
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct mp_filter {int /*<<< orphan*/ * ppins; struct mp_hwdownload* priv; } ;

/* Variables and functions */
 struct mp_frame FUNC0 (scalar_t__,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,char*) ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC2 (struct mp_frame*) ; 
 struct mp_image* FUNC3 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mp_frame) ; 
 struct mp_frame FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mp_filter *f)
{
    struct mp_hwdownload *d = f->priv;

    if (!FUNC4(f->ppins[1], f->ppins[0]))
        return;

    struct mp_frame frame = FUNC6(f->ppins[0]);
    if (frame.type != MP_FRAME_VIDEO)
        goto passthrough;

    struct mp_image *src = frame.data;
    if (!src->hwctx)
        goto passthrough;

    struct mp_image *dst = FUNC3(src, d->pool);
    if (!dst) {
        FUNC1(f, "Could not copy hardware frame to CPU memory.\n");
        goto passthrough;
    }

    FUNC2(&frame);
    FUNC5(f->ppins[1], FUNC0(MP_FRAME_VIDEO, dst));
    return;

passthrough:
    FUNC5(f->ppins[1], frame);
    return;
}