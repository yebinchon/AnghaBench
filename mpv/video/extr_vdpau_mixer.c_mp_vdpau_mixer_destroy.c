
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdp_functions {int (* video_mixer_destroy ) (scalar_t__) ;} ;
struct mp_vdpau_mixer {scalar_t__ video_mixer; TYPE_1__* ctx; } ;
typedef int VdpStatus ;
struct TYPE_2__ {struct vdp_functions vdp; } ;


 int CHECK_VDP_WARNING (struct mp_vdpau_mixer*,char*) ;
 scalar_t__ VDP_INVALID_HANDLE ;
 int stub1 (scalar_t__) ;
 int talloc_free (struct mp_vdpau_mixer*) ;

void mp_vdpau_mixer_destroy(struct mp_vdpau_mixer *mixer)
{
    struct vdp_functions *vdp = &mixer->ctx->vdp;
    VdpStatus vdp_st;
    if (mixer->video_mixer != VDP_INVALID_HANDLE) {
        vdp_st = vdp->video_mixer_destroy(mixer->video_mixer);
        CHECK_VDP_WARNING(mixer, "Error when calling vdp_video_mixer_destroy");
    }
    talloc_free(mixer);
}
