
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdp_functions {scalar_t__ (* video_mixer_set_attribute_values ) (int ,int,int *,void const**) ;int (* get_error_string ) (scalar_t__) ;} ;
struct mp_vdpau_mixer {int video_mixer; TYPE_1__* ctx; } ;
typedef int VdpVideoMixerAttribute ;
typedef scalar_t__ VdpStatus ;
struct TYPE_2__ {struct vdp_functions vdp; } ;


 int MP_ERR (struct mp_vdpau_mixer*,char*,char*,int ) ;
 scalar_t__ VDP_STATUS_OK ;
 scalar_t__ stub1 (int ,int,int *,void const**) ;
 int stub2 (scalar_t__) ;

__attribute__((used)) static int set_video_attribute(struct mp_vdpau_mixer *mixer,
                               VdpVideoMixerAttribute attr,
                               const void *value, char *attr_name)
{
    struct vdp_functions *vdp = &mixer->ctx->vdp;
    VdpStatus vdp_st;

    vdp_st = vdp->video_mixer_set_attribute_values(mixer->video_mixer, 1,
                                                   &attr, &value);
    if (vdp_st != VDP_STATUS_OK) {
        MP_ERR(mixer, "Error setting video mixer attribute %s: %s\n", attr_name,
               vdp->get_error_string(vdp_st));
        return -1;
    }
    return 0;
}
