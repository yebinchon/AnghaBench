
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {int devs; struct priv* priv; } ;
struct TYPE_2__ {int av_device_ref; } ;
struct priv {int * ctx; TYPE_1__ hwctx; } ;


 int av_buffer_unref (int *) ;
 int disable_video_plane (struct ra_hwdec*) ;
 int drm_atomic_destroy_context (int *) ;
 int hwdec_devices_remove (int ,TYPE_1__*) ;
 int set_current_frame (struct ra_hwdec*,int *) ;

__attribute__((used)) static void uninit(struct ra_hwdec *hw)
{
    struct priv *p = hw->priv;

    disable_video_plane(hw);
    set_current_frame(hw, ((void*)0));

    hwdec_devices_remove(hw->devs, &p->hwctx);
    av_buffer_unref(&p->hwctx.av_device_ref);

    if (p->ctx) {
        drm_atomic_destroy_context(p->ctx);
        p->ctx = ((void*)0);
    }
}
