
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int surface_desc ;
struct d3drm_device {int height; int width; int * device; int * render_target; int d3drm; int * ddraw; } ;
typedef int desc ;
typedef int UINT ;
struct TYPE_12__ {int member_0; } ;
struct TYPE_10__ {int dwZBufferBitDepth; } ;
struct TYPE_9__ {int dwCaps; } ;
struct TYPE_11__ {int dwSize; int dwFlags; int dwHeight; int dwWidth; TYPE_2__ u2; TYPE_1__ ddsCaps; } ;
typedef int IDirectDrawSurface ;
typedef int IDirectDraw ;
typedef int IDirect3DDevice2 ;
typedef int IDirect3DDevice ;
typedef int IDirect3D2 ;
typedef int HRESULT ;
typedef TYPE_3__ DDSURFACEDESC ;
typedef TYPE_4__ DDSCAPS ;
typedef scalar_t__ BOOL ;


 int DDERR_INVALIDCAPS ;
 int DDSCAPS_3DDEVICE ;
 int DDSCAPS_ZBUFFER ;
 int DDSD_CAPS ;
 int DDSD_HEIGHT ;
 int DDSD_WIDTH ;
 int DDSD_ZBUFFERBITDEPTH ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int IDirect3D2_CreateDevice (int *,int *,int *,int **) ;
 int IDirect3D2_Release (int *) ;
 int IDirect3DDevice2_QueryInterface (int *,int *,void**) ;
 int IDirect3DDevice2_Release (int *) ;
 int IDirect3DRM_AddRef (int ) ;
 int IDirectDrawSurface_AddAttachedSurface (int *,int *) ;
 int IDirectDrawSurface_AddRef (int *) ;
 int IDirectDrawSurface_DeleteAttachedSurface (int *,int ,int *) ;
 int IDirectDrawSurface_GetAttachedSurface (int *,TYPE_4__*,int **) ;
 int IDirectDrawSurface_GetSurfaceDesc (int *,TYPE_3__*) ;
 int IDirectDrawSurface_QueryInterface (int *,int *,void**) ;
 int IDirectDrawSurface_Release (int *) ;
 int IDirectDraw_AddRef (int *) ;
 int IDirectDraw_CreateSurface (int *,TYPE_3__*,int **,int *) ;
 int IDirectDraw_QueryInterface (int *,int *,void**) ;
 int IID_IDirect3D2 ;
 int IID_IDirect3DDevice ;
 int IID_IDirect3DRGBDevice ;
 scalar_t__ SUCCEEDED (int ) ;
 int memset (TYPE_3__*,int ,int) ;

HRESULT d3drm_device_init(struct d3drm_device *device, UINT version, IDirectDraw *ddraw, IDirectDrawSurface *surface,
            BOOL create_z_surface)
{
    DDSCAPS caps = { DDSCAPS_ZBUFFER };
    IDirectDrawSurface *ds = ((void*)0);
    IDirect3DDevice *device1 = ((void*)0);
    IDirect3DDevice2 *device2 = ((void*)0);
    IDirect3D2 *d3d2 = ((void*)0);
    DDSURFACEDESC desc, surface_desc;
    HRESULT hr;

    device->ddraw = ddraw;
    IDirectDraw_AddRef(ddraw);
    IDirect3DRM_AddRef(device->d3drm);
    device->render_target = surface;
    IDirectDrawSurface_AddRef(surface);

    desc.dwSize = sizeof(desc);
    hr = IDirectDrawSurface_GetSurfaceDesc(surface, &desc);
    if (FAILED(hr))
        return hr;

    if (!(desc.ddsCaps.dwCaps & DDSCAPS_3DDEVICE))
        return DDERR_INVALIDCAPS;

    hr = IDirectDrawSurface_GetAttachedSurface(surface, &caps, &ds);
    if (SUCCEEDED(hr))
    {
        create_z_surface = FALSE;
        IDirectDrawSurface_Release(ds);
        ds = ((void*)0);
    }

    if (create_z_surface)
    {
        memset(&surface_desc, 0, sizeof(surface_desc));
        surface_desc.dwSize = sizeof(surface_desc);
        surface_desc.dwFlags = DDSD_CAPS | DDSD_ZBUFFERBITDEPTH | DDSD_WIDTH | DDSD_HEIGHT;
        surface_desc.ddsCaps.dwCaps = DDSCAPS_ZBUFFER;
        surface_desc.u2.dwZBufferBitDepth = 16;
        surface_desc.dwWidth = desc.dwWidth;
        surface_desc.dwHeight = desc.dwHeight;
        hr = IDirectDraw_CreateSurface(ddraw, &surface_desc, &ds, ((void*)0));
        if (FAILED(hr))
            return hr;

        hr = IDirectDrawSurface_AddAttachedSurface(surface, ds);
        IDirectDrawSurface_Release(ds);
        if (FAILED(hr))
            return hr;
    }

    if (version == 1)
        hr = IDirectDrawSurface_QueryInterface(surface, &IID_IDirect3DRGBDevice, (void **)&device1);
    else
    {
        IDirectDraw_QueryInterface(ddraw, &IID_IDirect3D2, (void**)&d3d2);
        hr = IDirect3D2_CreateDevice(d3d2, &IID_IDirect3DRGBDevice, surface, &device2);
        IDirect3D2_Release(d3d2);
    }
    if (FAILED(hr))
    {
        IDirectDrawSurface_DeleteAttachedSurface(surface, 0, ds);
        return hr;
    }

    if (version != 1)
    {
        hr = IDirect3DDevice2_QueryInterface(device2, &IID_IDirect3DDevice, (void**)&device1);
        IDirect3DDevice2_Release(device2);
        if (FAILED(hr))
        {
            IDirectDrawSurface_DeleteAttachedSurface(surface, 0, ds);
            return hr;
        }
    }
    device->device = device1;
    device->width = desc.dwWidth;
    device->height = desc.dwHeight;

    return hr;
}
