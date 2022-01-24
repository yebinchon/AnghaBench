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
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {scalar_t__ dwidth; scalar_t__ dheight; int want_redraw; TYPE_4__* params; TYPE_3__* opts; struct vdpctx* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
struct TYPE_5__ {int /*<<< orphan*/  y1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
struct vdpctx {long long flip_offset_us; long long flip_offset_fs; long long flip_offset_window; scalar_t__ output_surface_w; scalar_t__ output_surface_h; int rotation; int num_output_surfaces; scalar_t__* output_surfaces; scalar_t__ rotation_surface; int /*<<< orphan*/  vdp_device; TYPE_2__ src_rect_vid; TYPE_1__ out_rect_vid; int /*<<< orphan*/  osd_rect; struct vdp_functions* vdp; } ;
struct vdp_functions {scalar_t__ (* output_surface_query_capabilities ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* output_surface_destroy ) (scalar_t__) ;scalar_t__ (* output_surface_create ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ;} ;
struct mp_rect {int /*<<< orphan*/  y1; int /*<<< orphan*/  y0; int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
typedef  scalar_t__ VdpStatus ;
typedef  int /*<<< orphan*/  VdpBool ;
struct TYPE_8__ {int rotate; } ;
struct TYPE_7__ {scalar_t__ fullscreen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,scalar_t__) ; 
 int /*<<< orphan*/  OUTPUT_RGBA_FORMAT ; 
 scalar_t__ VDP_INVALID_HANDLE ; 
 scalar_t__ VDP_STATUS_OK ; 
 void* FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct vo*,struct mp_rect*,struct mp_rect*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vo*,long long,int) ; 

__attribute__((used)) static void FUNC11(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;
    struct mp_rect src_rect;
    struct mp_rect dst_rect;
    FUNC9(vo, &src_rect, &dst_rect, &vc->osd_rect);
    vc->out_rect_vid.x0 = dst_rect.x0;
    vc->out_rect_vid.x1 = dst_rect.x1;
    vc->out_rect_vid.y0 = dst_rect.y0;
    vc->out_rect_vid.y1 = dst_rect.y1;
    if (vo->params->rotate == 90 || vo->params->rotate == 270) {
        vc->src_rect_vid.y0 = src_rect.x0;
        vc->src_rect_vid.y1 = src_rect.x1;
        vc->src_rect_vid.x0 = src_rect.y0;
        vc->src_rect_vid.x1 = src_rect.y1;
    } else {
        vc->src_rect_vid.x0 = src_rect.x0;
        vc->src_rect_vid.x1 = src_rect.x1;
        vc->src_rect_vid.y0 = src_rect.y0;
        vc->src_rect_vid.y1 = src_rect.y1;
    }

    VdpBool ok;
    uint32_t max_w, max_h;
    vdp_st = vdp->output_surface_query_capabilities(vc->vdp_device,
                                                    OUTPUT_RGBA_FORMAT,
                                                    &ok, &max_w, &max_h);
    if (vdp_st != VDP_STATUS_OK || !ok)
        return;

    vc->flip_offset_us = vo->opts->fullscreen ?
                         1000LL * vc->flip_offset_fs :
                         1000LL * vc->flip_offset_window;
    FUNC10(vo, vc->flip_offset_us, 1);

    if (vc->output_surface_w < vo->dwidth || vc->output_surface_h < vo->dheight ||
        vc->rotation != vo->params->rotate)
    {
        vc->output_surface_w = FUNC2(max_w, vc->output_surface_w, vo->dwidth);
        vc->output_surface_h = FUNC2(max_h, vc->output_surface_h, vo->dheight);
        // Creation of output_surfaces
        for (int i = 0; i < vc->num_output_surfaces; i++)
            if (vc->output_surfaces[i] != VDP_INVALID_HANDLE) {
                vdp_st = vdp->output_surface_destroy(vc->output_surfaces[i]);
                FUNC0(vo, "Error when calling "
                                  "vdp_output_surface_destroy");
            }
        for (int i = 0; i < vc->num_output_surfaces; i++) {
            vdp_st = vdp->output_surface_create(vc->vdp_device,
                                                OUTPUT_RGBA_FORMAT,
                                                vc->output_surface_w,
                                                vc->output_surface_h,
                                                &vc->output_surfaces[i]);
            FUNC0(vo, "Error when calling vdp_output_surface_create");
            FUNC1(vo, "vdpau out create: %u\n",
                   vc->output_surfaces[i]);
        }
        if (vc->rotation_surface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->output_surface_destroy(vc->rotation_surface);
            FUNC0(vo, "Error when calling "
                              "vdp_output_surface_destroy");
            vc->rotation_surface = VDP_INVALID_HANDLE;
        }
        if (vo->params->rotate == 90 || vo->params->rotate == 270) {
            vdp_st = vdp->output_surface_create(vc->vdp_device,
                                                OUTPUT_RGBA_FORMAT,
                                                vc->output_surface_h,
                                                vc->output_surface_w,
                                                &vc->rotation_surface);
        } else if (vo->params->rotate == 180) {
            vdp_st = vdp->output_surface_create(vc->vdp_device,
                                                OUTPUT_RGBA_FORMAT,
                                                vc->output_surface_w,
                                                vc->output_surface_h,
                                                &vc->rotation_surface);
        }
        FUNC0(vo, "Error when calling vdp_output_surface_create");
        FUNC1(vo, "vdpau rotation surface create: %u\n",
               vc->rotation_surface);
    }
    vc->rotation = vo->params->rotate;
    vo->want_redraw = true;
}