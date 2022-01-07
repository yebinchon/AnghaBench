
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_stateblock {int dummy; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3d9_stateblock {int refcount; int * parent_device; struct wined3d_stateblock* wined3d_stateblock; TYPE_1__ IDirect3DStateBlock9_iface; } ;
struct d3d9_device {int IDirect3DDevice9Ex_iface; int wined3d_device; } ;
typedef enum wined3d_stateblock_type { ____Placeholder_wined3d_stateblock_type } wined3d_stateblock_type ;
typedef int HRESULT ;
typedef scalar_t__ D3DSTATEBLOCKTYPE ;


 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_AddRef (int *) ;
 int WARN (char*,int ) ;
 int d3d9_stateblock_vtbl ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_stateblock_create (int ,int,struct wined3d_stateblock**) ;

HRESULT stateblock_init(struct d3d9_stateblock *stateblock, struct d3d9_device *device,
        D3DSTATEBLOCKTYPE type, struct wined3d_stateblock *wined3d_stateblock)
{
    HRESULT hr;

    stateblock->IDirect3DStateBlock9_iface.lpVtbl = &d3d9_stateblock_vtbl;
    stateblock->refcount = 1;

    if (wined3d_stateblock)
    {
        stateblock->wined3d_stateblock = wined3d_stateblock;
    }
    else
    {
        wined3d_mutex_lock();
        hr = wined3d_stateblock_create(device->wined3d_device,
                (enum wined3d_stateblock_type)type, &stateblock->wined3d_stateblock);
        wined3d_mutex_unlock();
        if (FAILED(hr))
        {
            WARN("Failed to create wined3d stateblock, hr %#x.\n", hr);
            return hr;
        }
    }

    stateblock->parent_device = &device->IDirect3DDevice9Ex_iface;
    IDirect3DDevice9Ex_AddRef(stateblock->parent_device);

    return D3D_OK;
}
