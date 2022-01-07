
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct vdpctx* priv; } ;
struct vdpctx {scalar_t__ black_pixel; struct vdp_functions* vdp; } ;
struct vdp_functions {int (* output_surface_destroy ) (scalar_t__) ;} ;
typedef int VdpStatus ;


 int CHECK_VDP_WARNING (struct vo*,char*) ;
 scalar_t__ VDP_INVALID_HANDLE ;
 int forget_frames (struct vo*,int) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void free_video_specific(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;

    forget_frames(vo, 0);

    if (vc->black_pixel != VDP_INVALID_HANDLE) {
        vdp_st = vdp->output_surface_destroy(vc->black_pixel);
        CHECK_VDP_WARNING(vo, "Error when calling vdp_output_surface_destroy");
    }
    vc->black_pixel = VDP_INVALID_HANDLE;
}
