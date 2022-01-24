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
struct vo {int /*<<< orphan*/  hwdec_devs; struct vdpctx* priv; } ;
struct vdpctx {int /*<<< orphan*/  video_mixer; TYPE_1__* mpvdp; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*) ; 

__attribute__((used)) static void FUNC5(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;

    FUNC2(vo->hwdec_devs, &vc->mpvdp->hwctx);
    FUNC1(vo->hwdec_devs);

    /* Destroy all vdpau objects */
    FUNC3(vc->video_mixer);
    FUNC0(vo);

    FUNC4(vo);
}