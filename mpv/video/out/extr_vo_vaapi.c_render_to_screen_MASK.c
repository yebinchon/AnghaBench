#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vaapi_subpic {int /*<<< orphan*/  id; int /*<<< orphan*/  dst_h; int /*<<< orphan*/  dst_w; int /*<<< orphan*/  dst_y; int /*<<< orphan*/  dst_x; int /*<<< orphan*/  src_h; int /*<<< orphan*/  src_w; int /*<<< orphan*/  src_y; int /*<<< orphan*/  src_x; } ;
struct vaapi_osd_part {struct vaapi_subpic subpic; scalar_t__ active; } ;
struct TYPE_12__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_11__ {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_7__ {int /*<<< orphan*/  space; } ;
struct TYPE_8__ {int w; int h; TYPE_1__ color; } ;
struct priv {int scaling; int /*<<< orphan*/  display; struct vaapi_osd_part* osd_parts; TYPE_6__ dst_rect; TYPE_5__ src_rect; TYPE_4__* vo; TYPE_2__ image_params; scalar_t__ osd_screen; struct mp_image* black_surface; int /*<<< orphan*/  pool; } ;
struct mp_image {int dummy; } ;
typedef  scalar_t__ VASurfaceID ;
typedef  int /*<<< orphan*/  VAStatus ;
struct TYPE_10__ {TYPE_3__* x11; } ;
struct TYPE_9__ {int /*<<< orphan*/  window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,char*) ; 
 int IMGFMT_420P ; 
 int /*<<< orphan*/  IMGFMT_VAAPI ; 
 int MAX_OSD_PARTS ; 
 int VA_FRAME_PICTURE ; 
 scalar_t__ VA_INVALID_ID ; 
 int VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD ; 
 struct mp_image* FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct mp_image* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image**) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct mp_image*) ; 
 scalar_t__ FUNC11 (struct priv*,struct mp_image*,struct mp_image*) ; 

__attribute__((used)) static bool FUNC12(struct priv *p, struct mp_image *mpi)
{
    VAStatus status;

    VASurfaceID surface = FUNC10(mpi);
    if (surface == VA_INVALID_ID) {
        if (!p->black_surface) {
            int w = p->image_params.w, h = p->image_params.h;
            // 4:2:0 should work everywhere
            int fmt = IMGFMT_420P;
            p->black_surface = FUNC3(p->pool, IMGFMT_VAAPI, w, h);
            if (p->black_surface) {
                struct mp_image *img = FUNC1(fmt, w, h);
                if (img) {
                    FUNC2(img, 0, 0, w, h);
                    if (FUNC11(p, p->black_surface, img) < 0)
                        FUNC4(&p->black_surface);
                    FUNC5(img);
                }
            }
        }
        surface = FUNC10(p->black_surface);
    }

    if (surface == VA_INVALID_ID)
        return false;

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        if (part->active) {
            struct vaapi_subpic *sp = &part->subpic;
            int flags = 0;
            if (p->osd_screen)
                flags |= VA_SUBPICTURE_DESTINATION_IS_SCREEN_COORD;
            status = FUNC6(p->display,
                                           sp->id, &surface, 1,
                                           sp->src_x, sp->src_y,
                                           sp->src_w, sp->src_h,
                                           sp->dst_x, sp->dst_y,
                                           sp->dst_w, sp->dst_h,
                                           flags);
            FUNC0(p, "vaAssociateSubpicture()");
        }
    }

    int flags = FUNC9(p->image_params.color.space) |
                p->scaling | VA_FRAME_PICTURE;
    status = FUNC8(p->display,
                          surface,
                          p->vo->x11->window,
                          p->src_rect.x0,
                          p->src_rect.y0,
                          p->src_rect.x1 - p->src_rect.x0,
                          p->src_rect.y1 - p->src_rect.y0,
                          p->dst_rect.x0,
                          p->dst_rect.y0,
                          p->dst_rect.x1 - p->dst_rect.x0,
                          p->dst_rect.y1 - p->dst_rect.y0,
                          NULL, 0,
                          flags);
    FUNC0(p, "vaPutSurface()");

    for (int n = 0; n < MAX_OSD_PARTS; n++) {
        struct vaapi_osd_part *part = &p->osd_parts[n];
        if (part->active) {
            struct vaapi_subpic *sp = &part->subpic;
            status = FUNC7(p->display, sp->id,
                                             &surface, 1);
            FUNC0(p, "vaDeassociateSubpicture()");
        }
    }

    return true;
}