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
struct mp_osd_res {int dummy; } ;
struct mp_image {int /*<<< orphan*/  params; } ;
struct MPContext {int /*<<< orphan*/  video_pts; int /*<<< orphan*/  osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  OSD_DRAW_SUB_ONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mp_osd_res,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_image*) ; 
 struct mp_osd_res FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct MPContext *mpctx, struct mp_image *image)
{
    struct mp_osd_res res = FUNC1(&image->params);
    FUNC0(mpctx->osd, res, mpctx->video_pts,
                      OSD_DRAW_SUB_ONLY, image);
}