
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* pVMR9; int d3d9_dev; } ;
typedef TYPE_3__ VMR9DefaultAllocatorPresenterImpl ;
struct TYPE_5__ {scalar_t__ left; scalar_t__ right; scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_6__ {int source_rect; TYPE_1__ target_rect; } ;
typedef int RECT ;
typedef int IDirect3DSurface9 ;
typedef int HRESULT ;


 int D3DBACKBUFFER_TYPE_MONO ;
 int D3DTEXF_LINEAR ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_GetBackBuffer (int ,int ,int ,int ,int **) ;
 int IDirect3DDevice9_StretchRect (int ,int *,int *,int *,int *,int ) ;
 int IDirect3DSurface9_Release (int *) ;
 int SetRect (int *,int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static HRESULT VMR9_ImagePresenter_PresentOffscreenSurface(VMR9DefaultAllocatorPresenterImpl *This, IDirect3DSurface9 *surface)
{
    HRESULT hr;
    IDirect3DSurface9 *target = ((void*)0);
    RECT target_rect;

    hr = IDirect3DDevice9_GetBackBuffer(This->d3d9_dev, 0, 0, D3DBACKBUFFER_TYPE_MONO, &target);
    if (FAILED(hr))
    {
        ERR("IDirect3DDevice9_GetBackBuffer -- %08x\n", hr);
        return hr;
    }


    SetRect(&target_rect, 0, This->pVMR9->target_rect.bottom - This->pVMR9->target_rect.top,
            This->pVMR9->target_rect.right - This->pVMR9->target_rect.left, 0);

    hr = IDirect3DDevice9_StretchRect(This->d3d9_dev, surface, &This->pVMR9->source_rect, target, &target_rect, D3DTEXF_LINEAR);
    if (FAILED(hr))
        ERR("IDirect3DDevice9_StretchRect -- %08x\n", hr);
    IDirect3DSurface9_Release(target);

    return hr;
}
