
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int desc ;
struct TYPE_13__ {int dwCaps; } ;
struct TYPE_12__ {int dwSize; int dwRGBBitCount; int dwRBitMask; int dwGBitMask; int dwBBitMask; scalar_t__ dwRGBAlphaBitMask; int dwFlags; } ;
struct TYPE_16__ {int dwSize; int dwFlags; int dwHeight; int dwWidth; int member_0; int * lpSurface; TYPE_2__ ddsCaps; TYPE_1__ ddpfPixelFormat; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_4__ IDirectDrawStreamSample_iface; int rect; int * surface; int * parent; } ;
typedef int RECT ;
typedef int IMediaStream ;
typedef int IDirectDrawSurface ;
typedef TYPE_3__ IDirectDrawStreamSampleImpl ;
typedef TYPE_4__ IDirectDrawStreamSample ;
typedef int IDirectDrawMediaStream ;
typedef int IDirectDraw ;
typedef int HRESULT ;
typedef TYPE_5__ DDSURFACEDESC ;


 int DDPF_RGB ;
 int DDSCAPS_OFFSCREENPLAIN ;
 int DDSCAPS_SYSTEMMEMORY ;
 int DDSD_CAPS ;
 int DDSD_HEIGHT ;
 int DDSD_PIXELFORMAT ;
 int DDSD_WIDTH ;
 int DirectDrawStreamSample_Vtbl ;
 int ERR (char*,int ) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int IDirectDrawMediaStream_GetDirectDraw (int *,int **) ;
 int IDirectDrawStreamSample_Release (TYPE_4__*) ;
 int IDirectDrawSurface_AddRef (int *) ;
 int IDirectDrawSurface_GetSurfaceDesc (int *,TYPE_5__*) ;
 int IDirectDraw_CreateSurface (int *,TYPE_5__*,int **,int *) ;
 int IDirectDraw_Release (int *) ;
 int IMediaStream_AddRef (int *) ;
 int S_OK ;
 int SetRect (int *,int ,int ,int,int) ;
 int TRACE (char*,TYPE_4__**) ;

__attribute__((used)) static HRESULT ddrawstreamsample_create(IDirectDrawMediaStream *parent, IDirectDrawSurface *surface,
    const RECT *rect, IDirectDrawStreamSample **ddraw_stream_sample)
{
    IDirectDrawStreamSampleImpl *object;
    HRESULT hr;

    TRACE("(%p)\n", ddraw_stream_sample);

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*object));
    if (!object)
        return E_OUTOFMEMORY;

    object->IDirectDrawStreamSample_iface.lpVtbl = &DirectDrawStreamSample_Vtbl;
    object->ref = 1;
    object->parent = (IMediaStream*)parent;
    IMediaStream_AddRef(object->parent);

    if (surface)
    {
        object->surface = surface;
        IDirectDrawSurface_AddRef(surface);
    }
    else
    {
        DDSURFACEDESC desc;
        IDirectDraw *ddraw;

        hr = IDirectDrawMediaStream_GetDirectDraw(parent, &ddraw);
        if (FAILED(hr))
        {
            IDirectDrawStreamSample_Release(&object->IDirectDrawStreamSample_iface);
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
        desc.lpSurface = ((void*)0);

        hr = IDirectDraw_CreateSurface(ddraw, &desc, &object->surface, ((void*)0));
        IDirectDraw_Release(ddraw);
        if (FAILED(hr))
        {
            ERR("failed to create surface, 0x%08x\n", hr);
            IDirectDrawStreamSample_Release(&object->IDirectDrawStreamSample_iface);
            return hr;
        }
    }

    if (rect)
        object->rect = *rect;
    else if (object->surface)
    {
        DDSURFACEDESC desc = { sizeof(desc) };
        hr = IDirectDrawSurface_GetSurfaceDesc(object->surface, &desc);
        if (hr == S_OK)
            SetRect(&object->rect, 0, 0, desc.dwWidth, desc.dwHeight);
    }

    *ddraw_stream_sample = &object->IDirectDrawStreamSample_iface;

    return S_OK;
}
