
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct VERTEX {int dummy; } ;
struct TYPE_3__ {int d3d9_dev; int d3d9_vertex; } ;
typedef TYPE_1__ VMR9DefaultAllocatorPresenterImpl ;
typedef int IDirect3DTexture9 ;
typedef int IDirect3DSurface9 ;
typedef int IDirect3DBaseTexture9 ;
typedef int HRESULT ;


 int D3DPT_TRIANGLESTRIP ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int IDirect3DDevice9_DrawPrimitive (int ,int ,int ,int) ;
 int IDirect3DDevice9_SetFVF (int ,int ) ;
 int IDirect3DDevice9_SetStreamSource (int ,int ,int ,int ,int) ;
 int IDirect3DDevice9_SetTexture (int ,int ,int *) ;
 int IDirect3DSurface9_GetContainer (int *,int *,void**) ;
 int IDirect3DTexture9_Release (int *) ;
 int IID_IDirect3DTexture9 ;
 int S_OK ;
 int USED_FVF ;

__attribute__((used)) static HRESULT VMR9_ImagePresenter_PresentTexture(VMR9DefaultAllocatorPresenterImpl *This, IDirect3DSurface9 *surface)
{
    IDirect3DTexture9 *texture = ((void*)0);
    HRESULT hr;

    hr = IDirect3DDevice9_SetFVF(This->d3d9_dev, USED_FVF);
    if (FAILED(hr))
    {
        FIXME("SetFVF: %08x\n", hr);
        return hr;
    }

    hr = IDirect3DDevice9_SetStreamSource(This->d3d9_dev, 0, This->d3d9_vertex, 0, sizeof(struct VERTEX));
    if (FAILED(hr))
    {
        FIXME("SetStreamSource: %08x\n", hr);
        return hr;
    }

    hr = IDirect3DSurface9_GetContainer(surface, &IID_IDirect3DTexture9, (void **) &texture);
    if (FAILED(hr))
    {
        FIXME("IDirect3DSurface9_GetContainer failed\n");
        return hr;
    }
    hr = IDirect3DDevice9_SetTexture(This->d3d9_dev, 0, (IDirect3DBaseTexture9 *)texture);
    IDirect3DTexture9_Release(texture);
    if (FAILED(hr))
    {
        FIXME("SetTexture: %08x\n", hr);
        return hr;
    }

    hr = IDirect3DDevice9_DrawPrimitive(This->d3d9_dev, D3DPT_TRIANGLESTRIP, 0, 2);
    if (FAILED(hr))
    {
        FIXME("DrawPrimitive: %08x\n", hr);
        return hr;
    }

    return S_OK;
}
