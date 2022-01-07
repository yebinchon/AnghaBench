
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec {int devs; struct priv_owner* priv; } ;
struct priv_owner {int device1; int device; int hwctx; } ;


 int SAFE_RELEASE (int ) ;
 int hwdec_devices_remove (int ,int *) ;

__attribute__((used)) static void uninit(struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;
    hwdec_devices_remove(hw->devs, &p->hwctx);
    SAFE_RELEASE(p->device);
    SAFE_RELEASE(p->device1);
}
