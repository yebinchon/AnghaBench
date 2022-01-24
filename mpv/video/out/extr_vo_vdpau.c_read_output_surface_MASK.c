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
typedef  int /*<<< orphan*/  uint32_t ;
struct vo {int /*<<< orphan*/  params; struct vdpctx* priv; } ;
struct vdpctx {struct vdp_functions* vdp; } ;
struct vdp_functions {scalar_t__ (* output_surface_get_parameters ) (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* output_surface_get_bits_native ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ;} ;
struct mp_image {void** planes; int /*<<< orphan*/ * stride; } ;
typedef  scalar_t__ VdpStatus ;
typedef  scalar_t__ VdpRGBAFormat ;
typedef  int /*<<< orphan*/  VdpOutputSurface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  IMGFMT_BGR0 ; 
 scalar_t__ OUTPUT_RGBA_FORMAT ; 
 scalar_t__ VDP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mp_image* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mp_image *FUNC5(struct vo *vo,
                                            VdpOutputSurface surface)
{
    struct vdpctx *vc = vo->priv;
    VdpStatus vdp_st;
    struct vdp_functions *vdp = vc->vdp;
    if (!vo->params)
        return NULL;

    VdpRGBAFormat fmt;
    uint32_t w, h;
    vdp_st = vdp->output_surface_get_parameters(surface, &fmt, &w, &h);
    if (vdp_st != VDP_STATUS_OK)
        return NULL;

    FUNC1(fmt == OUTPUT_RGBA_FORMAT);

    struct mp_image *image = FUNC2(IMGFMT_BGR0, w, h);
    if (!image)
        return NULL;

    void *dst_planes[] = { image->planes[0] };
    uint32_t dst_pitches[] = { image->stride[0] };
    vdp_st = vdp->output_surface_get_bits_native(surface, NULL, dst_planes,
                                                 dst_pitches);
    FUNC0(vo, "Error when calling vdp_output_surface_get_bits_native");

    return image;
}