
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {int devs; struct priv_owner* priv; } ;
struct TYPE_2__ {int av_device_ref; } ;
struct priv_owner {int dev9; int dev11; TYPE_1__ hwctx; } ;


 int SAFE_RELEASE (int ) ;
 int av_buffer_unref (int *) ;
 int hwdec_devices_remove (int ,TYPE_1__*) ;

__attribute__((used)) static void uninit(struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;
    hwdec_devices_remove(hw->devs, &p->hwctx);
    av_buffer_unref(&p->hwctx.av_device_ref);
    SAFE_RELEASE(p->dev11);
    SAFE_RELEASE(p->dev9);
}
