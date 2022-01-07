
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_resource_desc {scalar_t__ size; void* depth; void* height; void* width; int access; int usage; scalar_t__ multisample_quality; int multisample_type; int format; int resource_type; } ;
struct TYPE_2__ {int const* lpVtbl; } ;
struct d3d9_texture {int usage; int * parent_device; int wined3d_texture; int rtv_list; int resource; TYPE_1__ IDirect3DBaseTexture9_iface; } ;
struct d3d9_device {int IDirect3DDevice9Ex_iface; int wined3d_device; } ;
typedef void* UINT ;
typedef int IDirect3DBaseTexture9Vtbl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ D3DPOOL ;
typedef int D3DFORMAT ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DPOOL_SCRATCH ;
 int D3DUSAGE_AUTOGENMIPMAP ;
 int D3D_OK ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9Ex_AddRef (int *) ;
 int WARN (char*,...) ;
 int WINED3DUSAGE_SCRATCH ;
 int WINED3DUSAGE_TEXTURE ;
 int WINED3D_MULTISAMPLE_NONE ;
 int WINED3D_RTYPE_TEXTURE_3D ;
 int d3d9_resource_init (int *) ;
 int d3d9_texture_3d_vtbl ;
 int d3d9_texture_wined3d_parent_ops ;
 int list_init (int *) ;
 void* max (void*,void*) ;
 void* wined3d_log2i (void*) ;
 int wined3d_mutex_lock () ;
 int wined3d_mutex_unlock () ;
 int wined3d_texture_create (int ,struct wined3d_resource_desc*,int,void*,int ,int *,struct d3d9_texture*,int *,int *) ;
 int wined3daccess_from_d3dpool (scalar_t__,int) ;
 int wined3dformat_from_d3dformat (int ) ;
 int wined3dusage_from_d3dusage (int) ;

HRESULT volumetexture_init(struct d3d9_texture *texture, struct d3d9_device *device,
        UINT width, UINT height, UINT depth, UINT levels, DWORD usage, D3DFORMAT format, D3DPOOL pool)
{
    struct wined3d_resource_desc desc;
    HRESULT hr;

    texture->IDirect3DBaseTexture9_iface.lpVtbl = (const IDirect3DBaseTexture9Vtbl *)&d3d9_texture_3d_vtbl;
    d3d9_resource_init(&texture->resource);
    list_init(&texture->rtv_list);
    texture->usage = usage;

    desc.resource_type = WINED3D_RTYPE_TEXTURE_3D;
    desc.format = wined3dformat_from_d3dformat(format);
    desc.multisample_type = WINED3D_MULTISAMPLE_NONE;
    desc.multisample_quality = 0;
    desc.usage = wined3dusage_from_d3dusage(usage);
    desc.usage |= WINED3DUSAGE_TEXTURE;
    if (pool == D3DPOOL_SCRATCH)
        desc.usage |= WINED3DUSAGE_SCRATCH;
    desc.access = wined3daccess_from_d3dpool(pool, usage);
    desc.width = width;
    desc.height = height;
    desc.depth = depth;
    desc.size = 0;

    if (usage & D3DUSAGE_AUTOGENMIPMAP)
    {
        WARN("D3DUSAGE_AUTOGENMIPMAP volume texture is not supported, returning D3DERR_INVALIDCALL.\n");
        return D3DERR_INVALIDCALL;
    }
    if (!levels)
        levels = wined3d_log2i(max(max(width, height), depth)) + 1;

    wined3d_mutex_lock();
    hr = wined3d_texture_create(device->wined3d_device, &desc, 1, levels, 0,
            ((void*)0), texture, &d3d9_texture_wined3d_parent_ops, &texture->wined3d_texture);
    wined3d_mutex_unlock();
    if (FAILED(hr))
    {
        WARN("Failed to create wined3d volume texture, hr %#x.\n", hr);
        return hr;
    }

    texture->parent_device = &device->IDirect3DDevice9Ex_iface;
    IDirect3DDevice9Ex_AddRef(texture->parent_device);

    return D3D_OK;
}
