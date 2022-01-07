
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vo {struct vdpctx* priv; } ;
struct vdpctx {scalar_t__ vid_width; scalar_t__ vid_height; int rgb_mode; int image_format; int vdp_device; struct vdp_functions* vdp; } ;
struct vdp_functions {int (* video_surface_query_capabilities ) (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;
struct mp_image_params {scalar_t__ w; scalar_t__ h; int imgfmt; } ;
typedef int VdpStatus ;
typedef int VdpChromaType ;
typedef scalar_t__ VdpBool ;


 int CHECK_VDP_ERROR (struct vo*,char*) ;
 int MP_ERR (struct vo*,char*) ;
 int VDP_CHROMA_TYPE_420 ;
 int check_preemption (struct vo*) ;
 int free_video_specific (struct vo*) ;
 scalar_t__ initialize_vdpau_objects (struct vo*) ;
 int mp_vdpau_get_format (int ,int *,int *) ;
 int mp_vdpau_get_rgb_format (int ,int *) ;
 int stub1 (int ,int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int vo_x11_config_vo_window (struct vo*) ;

__attribute__((used)) static int reconfig(struct vo *vo, struct mp_image_params *params)
{
    struct vdpctx *vc = vo->priv;
    struct vdp_functions *vdp = vc->vdp;
    VdpStatus vdp_st;

    if (!check_preemption(vo))
        return -1;

    VdpChromaType chroma_type = VDP_CHROMA_TYPE_420;
    mp_vdpau_get_format(params->imgfmt, &chroma_type, ((void*)0));

    VdpBool ok;
    uint32_t max_w, max_h;
    vdp_st = vdp->video_surface_query_capabilities(vc->vdp_device, chroma_type,
                                                   &ok, &max_w, &max_h);
    CHECK_VDP_ERROR(vo, "Error when calling vdp_video_surface_query_capabilities");

    if (!ok)
        return -1;
    if (params->w > max_w || params->h > max_h) {
        if (ok)
            MP_ERR(vo, "Video too large for vdpau.\n");
        return -1;
    }

    vc->image_format = params->imgfmt;
    vc->vid_width = params->w;
    vc->vid_height = params->h;

    vc->rgb_mode = mp_vdpau_get_rgb_format(params->imgfmt, ((void*)0));

    free_video_specific(vo);

    vo_x11_config_vo_window(vo);

    if (initialize_vdpau_objects(vo) < 0)
        return -1;

    return 0;
}
