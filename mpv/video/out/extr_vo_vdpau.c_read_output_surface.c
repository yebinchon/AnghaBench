
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {int params; struct vdpctx* priv; } ;
struct vdpctx {struct vdp_functions* vdp; } ;
struct vdp_functions {scalar_t__ (* output_surface_get_parameters ) (int ,scalar_t__*,int *,int *) ;scalar_t__ (* output_surface_get_bits_native ) (int ,int *,void**,int *) ;} ;
struct mp_image {void** planes; int * stride; } ;
typedef scalar_t__ VdpStatus ;
typedef scalar_t__ VdpRGBAFormat ;
typedef int VdpOutputSurface ;


 int CHECK_VDP_WARNING (struct vo*,char*) ;
 int IMGFMT_BGR0 ;
 scalar_t__ OUTPUT_RGBA_FORMAT ;
 scalar_t__ VDP_STATUS_OK ;
 int assert (int) ;
 struct mp_image* mp_image_alloc (int ,int ,int ) ;
 scalar_t__ stub1 (int ,scalar_t__*,int *,int *) ;
 scalar_t__ stub2 (int ,int *,void**,int *) ;

__attribute__((used)) static struct mp_image *read_output_surface(struct vo *vo,
                                            VdpOutputSurface surface)
{
    struct vdpctx *vc = vo->priv;
    VdpStatus vdp_st;
    struct vdp_functions *vdp = vc->vdp;
    if (!vo->params)
        return ((void*)0);

    VdpRGBAFormat fmt;
    uint32_t w, h;
    vdp_st = vdp->output_surface_get_parameters(surface, &fmt, &w, &h);
    if (vdp_st != VDP_STATUS_OK)
        return ((void*)0);

    assert(fmt == OUTPUT_RGBA_FORMAT);

    struct mp_image *image = mp_image_alloc(IMGFMT_BGR0, w, h);
    if (!image)
        return ((void*)0);

    void *dst_planes[] = { image->planes[0] };
    uint32_t dst_pitches[] = { image->stride[0] };
    vdp_st = vdp->output_surface_get_bits_native(surface, ((void*)0), dst_planes,
                                                 dst_pitches);
    CHECK_VDP_WARNING(vo, "Error when calling vdp_output_surface_get_bits_native");

    return image;
}
