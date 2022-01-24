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
struct vo_frame {int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  current; int /*<<< orphan*/  redraw; } ;
struct vo {struct vdpctx* priv; } ;
struct vdpctx {struct mp_image* current_image; int /*<<< orphan*/  current_duration; int /*<<< orphan*/  current_pts; int /*<<< orphan*/  mpvdp; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 
 struct mp_image* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vo*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (struct vo*,struct mp_image*) ; 

__attribute__((used)) static void FUNC7(struct vo *vo, struct vo_frame *frame)
{
    struct vdpctx *vc = vo->priv;

    FUNC1(vo);

    if (frame->current && !frame->redraw) {
        struct mp_image *vdp_mpi =
            FUNC3(vc->mpvdp, frame->current);
        if (!vdp_mpi)
            FUNC0(vo, "Could not upload image.\n");

        FUNC5(vc->current_image);
        vc->current_image = vdp_mpi;
    }

    vc->current_pts = frame->pts;
    vc->current_duration = frame->duration;

    if (FUNC4(vo)) {
        FUNC6(vo, vc->current_image);
        FUNC2(vo);
    }
}