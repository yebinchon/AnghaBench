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
struct vo_frame {int /*<<< orphan*/  member_0; } ;
struct vo {struct priv* priv; } ;
struct ra_fbo {int flip; int /*<<< orphan*/  tex; } ;
struct TYPE_3__ {int /*<<< orphan*/  ra; } ;
struct TYPE_4__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct priv {int skip_osd; TYPE_1__ egl; int /*<<< orphan*/  gl_video; int /*<<< orphan*/  osd_pts; TYPE_2__ osd_res; int /*<<< orphan*/  enable_osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  RENDER_FRAME_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vo_frame*,struct ra_fbo,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (!p->enable_osd)
        return;

    if (!FUNC1(p->gl_video, &p->osd_res, p->osd_pts)) {
        p->skip_osd = true;
        return;
    }

    FUNC0(vo, "start rpi_osd");

    struct vo_frame frame = {0};
    struct ra_fbo target = {
        .tex = FUNC4(p->egl.ra, 0, p->osd_res.w, p->osd_res.h),
        .flip = true,
    };
    FUNC3(p->gl_video, p->osd_pts);
    FUNC2(p->gl_video, &frame, target, RENDER_FRAME_DEF);
    FUNC5(p->egl.ra, &target.tex);

    FUNC0(vo, "stop rpi_osd");
}