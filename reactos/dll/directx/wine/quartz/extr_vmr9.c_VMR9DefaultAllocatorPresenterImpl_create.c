
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct quartz_vmr {int hD3d9; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int refCount; TYPE_3__ IVMRImagePresenter9_iface; int reset; int * SurfaceAllocatorNotify; int ack; int * hWndThread; scalar_t__ num_surfaces; int * d3d9_vertex; scalar_t__ hMon; int * d3d9_dev; int * d3d9_surfaces; struct quartz_vmr* pVMR9; TYPE_1__ IVMRSurfaceAllocatorEx9_iface; int d3d9_ptr; } ;
typedef TYPE_2__ VMR9DefaultAllocatorPresenterImpl ;
typedef TYPE_3__* LPVOID ;
typedef scalar_t__ HRESULT ;
typedef int D3DDISPLAYMODE ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int CoTaskMemFree (TYPE_2__*) ;
 int CreateEventW (int *,int ,int ,int *) ;
 scalar_t__ D3DERR_INVALIDCALL ;
 scalar_t__ D3DERR_NOTAVAILABLE ;
 int D3DFMT_X8R8G8B8 ;
 int ERR (char*,...) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IDirect3D9_EnumAdapterModes (int ,int ,int ,int ,int *) ;
 int IDirect3D9_Release (int ) ;
 scalar_t__ S_OK ;
 scalar_t__ VFW_E_DDRAW_CAPS_NOT_SUITABLE ;
 int VMR9_ImagePresenter ;
 int VMR9_SurfaceAllocator ;
 int WARN (char*) ;
 int init_d3d9 (int ) ;

__attribute__((used)) static HRESULT VMR9DefaultAllocatorPresenterImpl_create(struct quartz_vmr *parent, LPVOID * ppv)
{
    HRESULT hr = S_OK;
    int i;
    VMR9DefaultAllocatorPresenterImpl* This;

    This = CoTaskMemAlloc(sizeof(VMR9DefaultAllocatorPresenterImpl));
    if (!This)
        return E_OUTOFMEMORY;

    This->d3d9_ptr = init_d3d9(parent->hD3d9);
    if (!This->d3d9_ptr)
    {
        WARN("Could not initialize d3d9.dll\n");
        CoTaskMemFree(This);
        return VFW_E_DDRAW_CAPS_NOT_SUITABLE;
    }

    i = 0;
    do
    {
        D3DDISPLAYMODE mode;

        hr = IDirect3D9_EnumAdapterModes(This->d3d9_ptr, i++, D3DFMT_X8R8G8B8, 0, &mode);
 if (hr == D3DERR_INVALIDCALL) break;
    } while (FAILED(hr));
    if (FAILED(hr))
        ERR("HR: %08x\n", hr);
    if (hr == D3DERR_NOTAVAILABLE)
    {
        ERR("Format not supported\n");
        IDirect3D9_Release(This->d3d9_ptr);
        CoTaskMemFree(This);
        return VFW_E_DDRAW_CAPS_NOT_SUITABLE;
    }

    This->IVMRImagePresenter9_iface.lpVtbl = &VMR9_ImagePresenter;
    This->IVMRSurfaceAllocatorEx9_iface.lpVtbl = &VMR9_SurfaceAllocator;

    This->refCount = 1;
    This->pVMR9 = parent;
    This->d3d9_surfaces = ((void*)0);
    This->d3d9_dev = ((void*)0);
    This->hMon = 0;
    This->d3d9_vertex = ((void*)0);
    This->num_surfaces = 0;
    This->hWndThread = ((void*)0);
    This->ack = CreateEventW(((void*)0), 0, 0, ((void*)0));
    This->SurfaceAllocatorNotify = ((void*)0);
    This->reset = FALSE;

    *ppv = &This->IVMRImagePresenter9_iface;
    return S_OK;
}
