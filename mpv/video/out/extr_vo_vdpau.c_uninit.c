
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {int hwdec_devs; struct vdpctx* priv; } ;
struct vdpctx {int video_mixer; TYPE_1__* mpvdp; } ;
struct TYPE_2__ {int hwctx; } ;


 int destroy_vdpau_objects (struct vo*) ;
 int hwdec_devices_destroy (int ) ;
 int hwdec_devices_remove (int ,int *) ;
 int mp_vdpau_mixer_destroy (int ) ;
 int vo_x11_uninit (struct vo*) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct vdpctx *vc = vo->priv;

    hwdec_devices_remove(vo->hwdec_devs, &vc->mpvdp->hwctx);
    hwdec_devices_destroy(vo->hwdec_devs);


    mp_vdpau_mixer_destroy(vc->video_mixer);
    destroy_vdpau_objects(vo);

    vo_x11_uninit(vo);
}
