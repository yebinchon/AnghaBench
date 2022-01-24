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
struct vdpctx {scalar_t__ black_pixel; struct vdp_functions* vdp; } ;
struct vdp_functions {int /*<<< orphan*/  (* output_surface_destroy ) (scalar_t__) ;} ;
typedef  int /*<<< orphan*/  VdpStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 scalar_t__ VDP_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;

    FUNC1(vo, false);

    if (vc->black_pixel != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(vc->black_pixel);
        FUNC0(vo, "Error when calling vdp_output_surface_destroy");
    }
    vc->black_pixel = VDP_INVALID_HANDLE;
}