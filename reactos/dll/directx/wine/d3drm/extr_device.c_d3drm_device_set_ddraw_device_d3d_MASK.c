#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct d3drm_device {int /*<<< orphan*/ * render_target; int /*<<< orphan*/ * device; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * ddraw; int /*<<< orphan*/  d3drm; } ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_3__ {int dwSize; int /*<<< orphan*/  dwHeight; int /*<<< orphan*/  dwWidth; } ;
typedef  int /*<<< orphan*/  IDirectDrawSurface ;
typedef  int /*<<< orphan*/  IDirectDraw ;
typedef  int /*<<< orphan*/  IDirect3DDevice2 ;
typedef  int /*<<< orphan*/  IDirect3DDevice ;
typedef  int /*<<< orphan*/  IDirect3D ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DDSURFACEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3DRMERR_BADOBJECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDirect3DDevice2 ; 
 int /*<<< orphan*/  IID_IDirectDraw ; 
 int /*<<< orphan*/  IID_IDirectDrawSurface ; 

__attribute__((used)) static HRESULT FUNC9(struct d3drm_device *device, IDirect3D *d3d, IDirect3DDevice *d3d_device)
{
    IDirectDraw *ddraw;
    IDirectDrawSurface *surface;
    IDirect3DDevice2 *d3d_device2 = NULL;
    DDSURFACEDESC desc;
    HRESULT hr;

    /* AddRef these interfaces beforehand for the intentional leak on reinitialization. */
    if (FUNC0(hr = FUNC6(d3d, &IID_IDirectDraw, (void **)&ddraw)))
        return hr;
    FUNC5(device->d3drm);
    FUNC3(d3d_device);

    /* Fetch render target and get width/height from there */
    if (FUNC0(hr = FUNC4(d3d_device, &IID_IDirectDrawSurface, (void **)&surface)))
    {
        if (FUNC0(hr = FUNC4(d3d_device, &IID_IDirect3DDevice2, (void **)&d3d_device2)))
            return hr;
        hr = FUNC1(d3d_device2, &surface);
        FUNC2(d3d_device2);
        if (FUNC0(hr))
            return hr;
    }

    if (device->ddraw)
    {
        if (d3d_device2)
            FUNC8(surface);
        return D3DRMERR_BADOBJECT;
    }

    desc.dwSize = sizeof(desc);
    hr = FUNC7(surface, &desc);
    if (FUNC0(hr))
    {
        FUNC8(surface);
        return hr;
    }

    device->ddraw = ddraw;
    device->width = desc.dwWidth;
    device->height = desc.dwHeight;
    device->device = d3d_device;
    device->render_target = surface;

    return hr;
}