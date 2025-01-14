
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_buffer_desc {int usage; int access; scalar_t__ structure_byte_stride; scalar_t__ misc_flags; int bind_flags; int byte_width; } ;
struct TYPE_2__ {int * lpVtbl; } ;
struct d3d8_indexbuffer {int * parent_device; int wined3d_buffer; int format; int resource; TYPE_1__ IDirect3DIndexBuffer8_iface; } ;
struct d3d8_device {int IDirect3DDevice8_iface; int wined3d_device; } ;
typedef int UINT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ D3DPOOL ;
typedef int D3DFORMAT ;


 scalar_t__ D3DPOOL_SCRATCH ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice8_AddRef (int *) ;
 int WARN (char*,int ) ;
 int WINED3DUSAGE_MASK ;
 int WINED3DUSAGE_SCRATCH ;
 int WINED3DUSAGE_STATICDECL ;
 int WINED3D_BIND_INDEX_BUFFER ;
 int WINED3D_RESOURCE_ACCESS_MAP_R ;
 int WINED3D_RESOURCE_ACCESS_MAP_W ;
 int d3d8_indexbuffer_vtbl ;
 int d3d8_indexbuffer_wined3d_parent_ops ;
 int d3d8_resource_init (int *) ;
 int wined3d_buffer_create (int ,struct wined3d_buffer_desc*,int *,struct d3d8_indexbuffer*,int *,int *) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3daccess_from_d3dpool (scalar_t__,int) ;
 int wined3dformat_from_d3dformat (int ) ;

HRESULT indexbuffer_init(struct d3d8_indexbuffer *buffer, struct d3d8_device *device,
        UINT size, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_buffer_desc desc;
    HRESULT hr;

    desc.byte_width = size;
    desc.usage = (usage & WINED3DUSAGE_MASK) | WINED3DUSAGE_STATICDECL;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.bind_flags = WINED3D_BIND_INDEX_BUFFER;
    desc.access = wined3daccess_from_d3dpool(pool, usage)
            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.misc_flags = 0;
    desc.structure_byte_stride = 0;

    buffer->IDirect3DIndexBuffer8_iface.lpVtbl = &d3d8_indexbuffer_vtbl;
    d3d8_resource_init(&buffer->resource);
    buffer->format = wined3dformat_from_d3dformat(format);

    wined3d_mutex_lock();
    hr = wined3d_buffer_create(device->wined3d_device, &desc, ((void*)0), buffer,
            &d3d8_indexbuffer_wined3d_parent_ops, &buffer->wined3d_buffer);
    wined3d_mutex_unlock();
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d buffer, hr %#x.\n", hr);
        return hr;
    }

    buffer->parent_device = &device->IDirect3DDevice8_iface;
    IDirect3DDevice8_AddRef(buffer->parent_device);

    return D3D_OK;
}
