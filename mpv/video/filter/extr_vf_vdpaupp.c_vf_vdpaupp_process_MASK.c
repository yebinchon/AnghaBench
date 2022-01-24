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
struct priv {int /*<<< orphan*/  queue; TYPE_1__* opts; } ;
struct mp_vdpau_mixer_frame {void* current; int /*<<< orphan*/  opts; void** past; void** future; int /*<<< orphan*/  field; } ;
struct TYPE_4__ {scalar_t__ hw_subfmt; } ;
struct mp_image {TYPE_2__ params; void** planes; } ;
struct mp_filter {struct priv* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD ; 
 int /*<<< orphan*/  VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME ; 
 int /*<<< orphan*/  VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct mp_image*) ; 
 struct mp_image* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mp_vdpau_mixer_frame* FUNC7 (struct mp_image*) ; 
 void* FUNC8 (struct priv*,struct mp_vdpau_mixer_frame*,int) ; 

__attribute__((used)) static void FUNC9(struct mp_filter *f)
{
    struct priv *p = f->priv;

    FUNC1(p->queue);

    if (!FUNC0(p->queue))
        return;

    struct mp_image *mpi =
        FUNC6(FUNC2(p->queue, 0));
    if (!mpi)
        return; // OOM
    struct mp_vdpau_mixer_frame *frame = FUNC7(mpi);

    if (!FUNC4(p->queue)) {
        frame->field = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME;
    } else if (FUNC3(p->queue)) {
        frame->field = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD;
    } else {
        frame->field = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD;
    }

    frame->future[0] = FUNC8(p, frame, 1);
    frame->current = FUNC8(p, frame, 0);
    frame->past[0] = FUNC8(p, frame, -1);
    frame->past[1] = FUNC8(p, frame, -2);

    frame->opts = p->opts->opts;

    mpi->planes[3] = (void *)(uintptr_t)frame->current;

    mpi->params.hw_subfmt = 0; // force mixer

    FUNC5(p->queue, mpi);
}