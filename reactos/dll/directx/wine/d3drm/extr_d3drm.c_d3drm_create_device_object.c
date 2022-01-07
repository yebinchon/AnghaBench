
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3drm_device {int IDirect3DRMDevice_iface; } ;
typedef int IDirect3DRM ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int d3drm_device_create (struct d3drm_device**,int *) ;

__attribute__((used)) static HRESULT d3drm_create_device_object(void **object, IDirect3DRM *d3drm)
{
    struct d3drm_device *device;
    HRESULT hr;

    if (FAILED(hr = d3drm_device_create(&device, d3drm)))
        return hr;

    *object = &device->IDirect3DRMDevice_iface;

    return hr;
}
