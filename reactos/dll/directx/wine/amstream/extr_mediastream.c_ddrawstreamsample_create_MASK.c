#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  desc ;
struct TYPE_13__ {int dwCaps; } ;
struct TYPE_12__ {int dwSize; int dwRGBBitCount; int dwRBitMask; int dwGBitMask; int dwBBitMask; scalar_t__ dwRGBAlphaBitMask; int /*<<< orphan*/  dwFlags; } ;
struct TYPE_16__ {int dwSize; int dwFlags; int dwHeight; int dwWidth; int member_0; int /*<<< orphan*/ * lpSurface; TYPE_2__ ddsCaps; TYPE_1__ ddpfPixelFormat; } ;
struct TYPE_15__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_4__ IDirectDrawStreamSample_iface; int /*<<< orphan*/  rect; int /*<<< orphan*/ * surface; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  IMediaStream ;
typedef  int /*<<< orphan*/  IDirectDrawSurface ;
typedef  TYPE_3__ IDirectDrawStreamSampleImpl ;
typedef  TYPE_4__ IDirectDrawStreamSample ;
typedef  int /*<<< orphan*/  IDirectDrawMediaStream ;
typedef  int /*<<< orphan*/  IDirectDraw ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ DDSURFACEDESC ;

/* Variables and functions */
 int /*<<< orphan*/  DDPF_RGB ; 
 int DDSCAPS_OFFSCREENPLAIN ; 
 int DDSCAPS_SYSTEMMEMORY ; 
 int DDSD_CAPS ; 
 int DDSD_HEIGHT ; 
 int DDSD_PIXELFORMAT ; 
 int DDSD_WIDTH ; 
 int /*<<< orphan*/  DirectDrawStreamSample_Vtbl ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_4__**) ; 

__attribute__((used)) static HRESULT FUNC13(IDirectDrawMediaStream *parent, IDirectDrawSurface *surface,
    const RECT *rect, IDirectDrawStreamSample **ddraw_stream_sample)
{
    IDirectDrawStreamSampleImpl *object;
    HRESULT hr;

    FUNC12("(%p)\n", ddraw_stream_sample);

    object = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*object));
    if (!object)
        return E_OUTOFMEMORY;

    object->IDirectDrawStreamSample_iface.lpVtbl = &DirectDrawStreamSample_Vtbl;
    object->ref = 1;
    object->parent = (IMediaStream*)parent;
    FUNC10(object->parent);

    if (surface)
    {
        object->surface = surface;
        FUNC6(surface);
    }
    else
    {
        DDSURFACEDESC desc;
        IDirectDraw *ddraw;

        hr = FUNC4(parent, &ddraw);
        if (FUNC1(hr))
        {
            FUNC5(&object->IDirectDrawStreamSample_iface);
            return hr;
        }

        desc.dwSize = sizeof(desc);
        desc.dwFlags = DDSD_CAPS|DDSD_HEIGHT|DDSD_WIDTH|DDSD_PIXELFORMAT;
        desc.dwHeight = 100;
        desc.dwWidth = 100;
        desc.ddpfPixelFormat.dwSize = sizeof(desc.ddpfPixelFormat);
        desc.ddpfPixelFormat.dwFlags = DDPF_RGB;
        desc.ddpfPixelFormat.dwRGBBitCount = 32;
        desc.ddpfPixelFormat.dwRBitMask = 0xff0000;
        desc.ddpfPixelFormat.dwGBitMask = 0x00ff00;
        desc.ddpfPixelFormat.dwBBitMask = 0x0000ff;
        desc.ddpfPixelFormat.dwRGBAlphaBitMask = 0;
        desc.ddsCaps.dwCaps = DDSCAPS_SYSTEMMEMORY|DDSCAPS_OFFSCREENPLAIN;
        desc.lpSurface = NULL;

        hr = FUNC8(ddraw, &desc, &object->surface, NULL);
        FUNC9(ddraw);
        if (FUNC1(hr))
        {
            FUNC0("failed to create surface, 0x%08x\n", hr);
            FUNC5(&object->IDirectDrawStreamSample_iface);
            return hr;
        }
    }

    if (rect)
        object->rect = *rect;
    else if (object->surface)
    {
        DDSURFACEDESC desc = { sizeof(desc) };
        hr = FUNC7(object->surface, &desc);
        if (hr == S_OK)
            FUNC11(&object->rect, 0, 0, desc.dwWidth, desc.dwHeight);
    }

    *ddraw_stream_sample = &object->IDirectDrawStreamSample_iface;

    return S_OK;
}