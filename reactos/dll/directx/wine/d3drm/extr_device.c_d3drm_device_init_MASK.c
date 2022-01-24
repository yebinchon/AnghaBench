#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surface_desc ;
struct d3drm_device {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * device; int /*<<< orphan*/ * render_target; int /*<<< orphan*/  d3drm; int /*<<< orphan*/ * ddraw; } ;
typedef  int /*<<< orphan*/  desc ;
typedef  int UINT ;
struct TYPE_12__ {int member_0; } ;
struct TYPE_10__ {int dwZBufferBitDepth; } ;
struct TYPE_9__ {int dwCaps; } ;
struct TYPE_11__ {int dwSize; int dwFlags; int /*<<< orphan*/  dwHeight; int /*<<< orphan*/  dwWidth; TYPE_2__ u2; TYPE_1__ ddsCaps; } ;
typedef  int /*<<< orphan*/  IDirectDrawSurface ;
typedef  int /*<<< orphan*/  IDirectDraw ;
typedef  int /*<<< orphan*/  IDirect3DDevice2 ;
typedef  int /*<<< orphan*/  IDirect3DDevice ;
typedef  int /*<<< orphan*/  IDirect3D2 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DDSURFACEDESC ;
typedef  TYPE_4__ DDSCAPS ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DDERR_INVALIDCAPS ; 
 int DDSCAPS_3DDEVICE ; 
 int DDSCAPS_ZBUFFER ; 
 int DDSD_CAPS ; 
 int DDSD_HEIGHT ; 
 int DDSD_WIDTH ; 
 int DDSD_ZBUFFERBITDEPTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDirect3D2 ; 
 int /*<<< orphan*/  IID_IDirect3DDevice ; 
 int /*<<< orphan*/  IID_IDirect3DRGBDevice ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

HRESULT FUNC18(struct d3drm_device *device, UINT version, IDirectDraw *ddraw, IDirectDrawSurface *surface,
            BOOL create_z_surface)
{
    DDSCAPS caps = { DDSCAPS_ZBUFFER };
    IDirectDrawSurface *ds = NULL;
    IDirect3DDevice *device1 = NULL;
    IDirect3DDevice2 *device2 = NULL;
    IDirect3D2 *d3d2 = NULL;
    DDSURFACEDESC desc, surface_desc;
    HRESULT hr;

    device->ddraw = ddraw;
    FUNC13(ddraw);
    FUNC5(device->d3drm);
    device->render_target = surface;
    FUNC7(surface);

    desc.dwSize = sizeof(desc);
    hr = FUNC10(surface, &desc);
    if (FUNC0(hr))
        return hr;

    if (!(desc.ddsCaps.dwCaps & DDSCAPS_3DDEVICE))
        return DDERR_INVALIDCAPS;

    hr = FUNC9(surface, &caps, &ds);
    if (FUNC16(hr))
    {
        create_z_surface = FALSE;
        FUNC12(ds);
        ds = NULL;
    }

    if (create_z_surface)
    {
        FUNC17(&surface_desc, 0, sizeof(surface_desc));
        surface_desc.dwSize = sizeof(surface_desc);
        surface_desc.dwFlags = DDSD_CAPS | DDSD_ZBUFFERBITDEPTH | DDSD_WIDTH | DDSD_HEIGHT;
        surface_desc.ddsCaps.dwCaps = DDSCAPS_ZBUFFER;
        surface_desc.u2.dwZBufferBitDepth = 16;
        surface_desc.dwWidth = desc.dwWidth;
        surface_desc.dwHeight = desc.dwHeight;
        hr = FUNC14(ddraw, &surface_desc, &ds, NULL);
        if (FUNC0(hr))
            return hr;

        hr = FUNC6(surface, ds);
        FUNC12(ds);
        if (FUNC0(hr))
            return hr;
    }

    if (version == 1)
        hr = FUNC11(surface, &IID_IDirect3DRGBDevice, (void **)&device1);
    else
    {
        FUNC15(ddraw, &IID_IDirect3D2, (void**)&d3d2);
        hr = FUNC1(d3d2, &IID_IDirect3DRGBDevice, surface, &device2);
        FUNC2(d3d2);
    }
    if (FUNC0(hr))
    {
        FUNC8(surface, 0, ds);
        return hr;
    }

    if (version != 1)
    {
        hr = FUNC3(device2, &IID_IDirect3DDevice, (void**)&device1);
        FUNC4(device2);
        if (FUNC0(hr))
        {
            FUNC8(surface, 0, ds);
            return hr;
        }
    }
    device->device = device1;
    device->width = desc.dwWidth;
    device->height = desc.dwHeight;

    return hr;
}