
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo {struct vdpctx* priv; } ;
struct vdpctx {size_t surface_num; int * output_surfaces; struct osd_bitmap_surface* osd_surfaces; struct vdp_functions* vdp; } ;
struct vdp_functions {int (* output_surface_render_bitmap_surface ) (int ,int *,int ,int *,int *,TYPE_2__*,int ) ;} ;
struct osd_bitmap_surface {int render_count; scalar_t__ format; TYPE_1__* targets; int surface; } ;
typedef int VdpStatus ;
struct TYPE_5__ {int blend_factor_source_color; int blend_equation_alpha; int blend_equation_color; int blend_factor_destination_alpha; int blend_factor_destination_color; int blend_factor_source_alpha; int struct_version; } ;
typedef TYPE_2__ VdpOutputSurfaceRenderBlendState ;
typedef int VdpOutputSurface ;
struct TYPE_4__ {int color; int source; int dest; } ;


 int CHECK_VDP_WARNING (struct vo*,char*) ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO ;
 int VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION ;
 int VDP_OUTPUT_SURFACE_RENDER_ROTATE_0 ;
 scalar_t__ VDP_RGBA_FORMAT_B8G8R8A8 ;
 int stub1 (int ,int *,int ,int *,int *,TYPE_2__*,int ) ;

__attribute__((used)) static void draw_osd_part(struct vo *vo, int index)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;
    struct osd_bitmap_surface *sfc = &vc->osd_surfaces[index];
    VdpOutputSurface output_surface = vc->output_surfaces[vc->surface_num];
    int i;

    VdpOutputSurfaceRenderBlendState blend_state = {
        .struct_version = VDP_OUTPUT_SURFACE_RENDER_BLEND_STATE_VERSION,
        .blend_factor_source_color =
            VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_SRC_ALPHA,
        .blend_factor_source_alpha =
            VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO,
        .blend_factor_destination_color =
            VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
        .blend_factor_destination_alpha =
            VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ZERO,
        .blend_equation_color = VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD,
        .blend_equation_alpha = VDP_OUTPUT_SURFACE_RENDER_BLEND_EQUATION_ADD,
    };

    VdpOutputSurfaceRenderBlendState blend_state_premultiplied = blend_state;
    blend_state_premultiplied.blend_factor_source_color =
            VDP_OUTPUT_SURFACE_RENDER_BLEND_FACTOR_ONE;

    for (i = 0; i < sfc->render_count; i++) {
        VdpOutputSurfaceRenderBlendState *blend = &blend_state;
        if (sfc->format == VDP_RGBA_FORMAT_B8G8R8A8)
            blend = &blend_state_premultiplied;
        vdp_st = vdp->
            output_surface_render_bitmap_surface(output_surface,
                                                 &sfc->targets[i].dest,
                                                 sfc->surface,
                                                 &sfc->targets[i].source,
                                                 &sfc->targets[i].color,
                                                 blend,
                                                 VDP_OUTPUT_SURFACE_RENDER_ROTATE_0);
        CHECK_VDP_WARNING(vo, "OSD: Error when rendering");
    }
}
