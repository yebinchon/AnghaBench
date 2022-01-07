
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct d3drm_device {int * render_target; int * device; int height; int width; int * ddraw; int d3drm; } ;
typedef int desc ;
struct TYPE_3__ {int dwSize; int dwHeight; int dwWidth; } ;
typedef int IDirectDrawSurface ;
typedef int IDirectDraw ;
typedef int IDirect3DDevice2 ;
typedef int IDirect3DDevice ;
typedef int IDirect3D ;
typedef int HRESULT ;
typedef TYPE_1__ DDSURFACEDESC ;


 int D3DRMERR_BADOBJECT ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice2_GetRenderTarget (int *,int **) ;
 int IDirect3DDevice2_Release (int *) ;
 int IDirect3DDevice_AddRef (int *) ;
 int IDirect3DDevice_QueryInterface (int *,int *,void**) ;
 int IDirect3DRM_AddRef (int ) ;
 int IDirect3D_QueryInterface (int *,int *,void**) ;
 int IDirectDrawSurface_GetSurfaceDesc (int *,TYPE_1__*) ;
 int IDirectDrawSurface_Release (int *) ;
 int IID_IDirect3DDevice2 ;
 int IID_IDirectDraw ;
 int IID_IDirectDrawSurface ;

__attribute__((used)) static HRESULT d3drm_device_set_ddraw_device_d3d(struct d3drm_device *device, IDirect3D *d3d, IDirect3DDevice *d3d_device)
{
    IDirectDraw *ddraw;
    IDirectDrawSurface *surface;
    IDirect3DDevice2 *d3d_device2 = ((void*)0);
    DDSURFACEDESC desc;
    HRESULT hr;


    if (FAILED(hr = IDirect3D_QueryInterface(d3d, &IID_IDirectDraw, (void **)&ddraw)))
        return hr;
    IDirect3DRM_AddRef(device->d3drm);
    IDirect3DDevice_AddRef(d3d_device);


    if (FAILED(hr = IDirect3DDevice_QueryInterface(d3d_device, &IID_IDirectDrawSurface, (void **)&surface)))
    {
        if (FAILED(hr = IDirect3DDevice_QueryInterface(d3d_device, &IID_IDirect3DDevice2, (void **)&d3d_device2)))
            return hr;
        hr = IDirect3DDevice2_GetRenderTarget(d3d_device2, &surface);
        IDirect3DDevice2_Release(d3d_device2);
        if (FAILED(hr))
            return hr;
    }

    if (device->ddraw)
    {
        if (d3d_device2)
            IDirectDrawSurface_Release(surface);
        return D3DRMERR_BADOBJECT;
    }

    desc.dwSize = sizeof(desc);
    hr = IDirectDrawSurface_GetSurfaceDesc(surface, &desc);
    if (FAILED(hr))
    {
        IDirectDrawSurface_Release(surface);
        return hr;
    }

    device->ddraw = ddraw;
    device->width = desc.dwWidth;
    device->height = desc.dwHeight;
    device->device = d3d_device;
    device->render_target = surface;

    return hr;
}
