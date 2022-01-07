
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource_desc {int usage; int access; int depth; scalar_t__ size; void* height; void* width; scalar_t__ multisample_quality; int multisample_type; int format; int resource_type; } ;
struct TYPE_2__ {int const* lpVtbl; } ;
struct d3d8_texture {int * parent_device; int wined3d_texture; int rtv_list; int resource; TYPE_1__ IDirect3DBaseTexture8_iface; } ;
struct d3d8_device {int IDirect3DDevice8_iface; int wined3d_device; } ;
typedef void* UINT ;
typedef int IDirect3DBaseTexture8Vtbl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ D3DPOOL ;
typedef int D3DFORMAT ;


 scalar_t__ D3DPOOL_DEFAULT ;
 scalar_t__ D3DPOOL_SCRATCH ;
 int D3DUSAGE_DYNAMIC ;
 int D3D_OK ;
 int Direct3DCubeTexture8_Vtbl ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice8_AddRef (int *) ;
 int WARN (char*,int ) ;
 int WINED3DUSAGE_LEGACY_CUBEMAP ;
 int WINED3DUSAGE_MASK ;
 int WINED3DUSAGE_SCRATCH ;
 int WINED3DUSAGE_TEXTURE ;
 int WINED3D_MULTISAMPLE_NONE ;
 int WINED3D_RESOURCE_ACCESS_MAP_R ;
 int WINED3D_RESOURCE_ACCESS_MAP_W ;
 int WINED3D_RTYPE_TEXTURE_2D ;
 int WINED3D_TEXTURE_CREATE_MAPPABLE ;
 int d3d8_resource_init (int *) ;
 int d3d8_texture_wined3d_parent_ops ;
 int list_init (int *) ;
 void* wined3d_log2i (void*) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_texture_create (int ,struct wined3d_resource_desc*,int,void*,int,int *,struct d3d8_texture*,int *,int *) ;
 int wined3daccess_from_d3dpool (scalar_t__,int) ;
 int wined3dformat_from_d3dformat (int ) ;

HRESULT cubetexture_init(struct d3d8_texture *texture, struct d3d8_device *device,
        UINT edge_length, UINT levels, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_resource_desc desc;
    DWORD flags = 0;
    HRESULT hr;

    texture->IDirect3DBaseTexture8_iface.lpVtbl = (const IDirect3DBaseTexture8Vtbl *)&Direct3DCubeTexture8_Vtbl;
    d3d8_resource_init(&texture->resource);
    list_init(&texture->rtv_list);

    desc.resource_type = WINED3D_RTYPE_TEXTURE_2D;
    desc.format = wined3dformat_from_d3dformat(format);
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = usage & WINED3DUSAGE_MASK;
    desc.usage |= WINED3DUSAGE_LEGACY_CUBEMAP | WINED3DUSAGE_TEXTURE;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.access = wined3daccess_from_d3dpool(pool, usage)
            | WINED3D_RESOURCE_ACCESS_MAP_R | WINED3D_RESOURCE_ACCESS_MAP_W;
    desc.width = edge_length;
    desc.height = edge_length;
    desc.depth = 1;
    desc.size = 0;

    if (pool != D3DPOOL_DEFAULT || (usage & D3DUSAGE_DYNAMIC))
        flags |= WINED3D_TEXTURE_CREATE_MAPPABLE;

    if (!levels)
        levels = wined3d_log2i(edge_length) + 1;

    wined3d_mutex_lock();
    hr = wined3d_texture_create(device->wined3d_device, &desc, 6, levels, flags,
            ((void*)0), texture, &d3d8_texture_wined3d_parent_ops, &texture->wined3d_texture);
    wined3d_mutex_unlock();
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d cube texture, hr %#x.\n", hr);
        return hr;
    }

    texture->parent_device = &device->IDirect3DDevice8_iface;
    IDirect3DDevice8_AddRef(texture->parent_device);

    return D3D_OK;
}
