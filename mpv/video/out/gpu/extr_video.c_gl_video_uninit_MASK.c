#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gl_video {int num_hwdecs; int /*<<< orphan*/  num_dr_buffers; int /*<<< orphan*/  osd; TYPE_4__* pass_redraw; TYPE_2__* pass_fresh; int /*<<< orphan*/  osd_timer; int /*<<< orphan*/  blit_timer; int /*<<< orphan*/  upload_timer; int /*<<< orphan*/  hdr_peak_ssbo; int /*<<< orphan*/  ra; int /*<<< orphan*/  lut_3d_texture; int /*<<< orphan*/  sc; int /*<<< orphan*/ * hwdecs; } ;
struct TYPE_7__ {struct gl_video* start; } ;
struct TYPE_8__ {TYPE_3__ desc; } ;
struct TYPE_5__ {struct gl_video* start; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int VO_PASS_PERF_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_video*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gl_video*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gl_video*) ; 

void FUNC10(struct gl_video *p)
{
    if (!p)
        return;

    FUNC9(p);

    for (int n = 0; n < p->num_hwdecs; n++)
        FUNC5(p->hwdecs[n]);
    p->num_hwdecs = 0;

    FUNC2(p->sc);

    FUNC6(p->ra, &p->lut_3d_texture);
    FUNC4(p->ra, &p->hdr_peak_ssbo);

    FUNC8(p->upload_timer);
    FUNC8(p->blit_timer);
    FUNC8(p->osd_timer);

    for (int i = 0; i < VO_PASS_PERF_MAX; i++) {
        FUNC7(p->pass_fresh[i].desc.start);
        FUNC7(p->pass_redraw[i].desc.start);
    }

    FUNC3(p->osd);

    // Forcibly destroy possibly remaining image references. This should also
    // cause gl_video_dr_free_buffer() to be called for the remaining buffers.
    FUNC1(p, true);

    // Should all have been unreffed already.
    FUNC0(!p->num_dr_buffers);

    FUNC7(p);
}