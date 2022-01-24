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
struct vo {struct vdpctx* priv; } ;
struct vdpctx {scalar_t__ flip_queue; scalar_t__ flip_target; int num_output_surfaces; scalar_t__* output_surfaces; scalar_t__ rotation_surface; int /*<<< orphan*/ * mpvdp; struct osd_bitmap_surface* osd_surfaces; struct vdp_functions* vdp; } ;
struct vdp_functions {int /*<<< orphan*/  (* bitmap_surface_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* output_surface_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* presentation_queue_target_destroy ) (scalar_t__) ;int /*<<< orphan*/  (* presentation_queue_destroy ) (scalar_t__) ;} ;
struct osd_bitmap_surface {scalar_t__ surface; } ;
typedef  int /*<<< orphan*/  VdpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int MAX_OSD_PARTS ; 
 scalar_t__ VDP_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;

    VdpStatus vdp_st;

    FUNC1(vo);

    if (vc->flip_queue != VDP_INVALID_HANDLE) {
        vdp_st = vdp->presentation_queue_destroy(vc->flip_queue);
        FUNC0(vo, "Error when calling vdp_presentation_queue_destroy");
    }

    if (vc->flip_target != VDP_INVALID_HANDLE) {
        vdp_st = vdp->presentation_queue_target_destroy(vc->flip_target);
        FUNC0(vo, "Error when calling "
                         "vdp_presentation_queue_target_destroy");
    }

    for (int i = 0; i < vc->num_output_surfaces; i++) {
        if (vc->output_surfaces[i] == VDP_INVALID_HANDLE)
            continue;
        vdp_st = vdp->output_surface_destroy(vc->output_surfaces[i]);
        FUNC0(vo, "Error when calling vdp_output_surface_destroy");
    }
    if (vc->rotation_surface != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(vc->rotation_surface);
        FUNC0(vo, "Error when calling vdp_output_surface_destroy");
    }

    for (int i = 0; i < MAX_OSD_PARTS; i++) {
        struct osd_bitmap_surface *sfc = &vc->osd_surfaces[i];
        if (sfc->surface != VDP_INVALID_HANDLE) {
            vdp_st = vdp->bitmap_surface_destroy(sfc->surface);
            FUNC0(vo, "Error when calling vdp_bitmap_surface_destroy");
        }
    }

    FUNC2(vc->mpvdp);
    vc->mpvdp = NULL;
}