
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_hwdec {int devs; struct priv_owner* priv; } ;
struct priv_owner {scalar_t__ d3d11_device; int hwctx; } ;


 int ID3D11Device_Release (scalar_t__) ;
 int hwdec_devices_remove (int ,int *) ;

__attribute__((used)) static void uninit(struct ra_hwdec *hw)
{
    struct priv_owner *p = hw->priv;

    hwdec_devices_remove(hw->devs, &p->hwctx);

    if (p->d3d11_device)
        ID3D11Device_Release(p->d3d11_device);
}
