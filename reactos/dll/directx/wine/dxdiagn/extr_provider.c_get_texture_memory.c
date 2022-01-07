
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwCaps4; } ;
struct TYPE_5__ {int dwCaps; TYPE_1__ u1; scalar_t__ dwCaps3; scalar_t__ dwCaps2; } ;
typedef int IDirectDraw7 ;
typedef int HRESULT ;
typedef int GUID ;
typedef int DWORD ;
typedef TYPE_2__ DDSCAPS2 ;
typedef int BOOL ;


 int DDSCAPS_LOCALVIDMEM ;
 int DDSCAPS_VIDEOMEMORY ;
 int DirectDrawCreateEx (int *,void**,int *,int *) ;
 int FALSE ;
 int IDirectDraw7_GetAvailableVidMem (int *,TYPE_2__*,int *,int *) ;
 int IDirectDraw7_Release (int *) ;
 int IID_IDirectDraw7 ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL get_texture_memory(GUID *adapter, DWORD *available_mem)
{
    IDirectDraw7 *pDirectDraw;
    HRESULT hr;
    DDSCAPS2 dd_caps;

    hr = DirectDrawCreateEx(adapter, (void **)&pDirectDraw, &IID_IDirectDraw7, ((void*)0));
    if (SUCCEEDED(hr))
    {
        dd_caps.dwCaps = DDSCAPS_LOCALVIDMEM | DDSCAPS_VIDEOMEMORY;
        dd_caps.dwCaps2 = dd_caps.dwCaps3 = dd_caps.u1.dwCaps4 = 0;
        hr = IDirectDraw7_GetAvailableVidMem(pDirectDraw, &dd_caps, available_mem, ((void*)0));
        IDirectDraw7_Release(pDirectDraw);
        if (SUCCEEDED(hr))
            return TRUE;
    }

    return FALSE;
}
