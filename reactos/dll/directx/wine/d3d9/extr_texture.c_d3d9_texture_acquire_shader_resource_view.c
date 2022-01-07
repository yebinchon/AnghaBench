
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layer_count; scalar_t__ layer_idx; int level_count; scalar_t__ level_idx; } ;
struct TYPE_4__ {TYPE_1__ texture; } ;
struct wined3d_view_desc {TYPE_2__ u; scalar_t__ flags; int format_id; } ;
struct wined3d_sub_resource_desc {int usage; int format; } ;
struct wined3d_shader_resource_view {int dummy; } ;
struct d3d9_texture {struct wined3d_shader_resource_view* wined3d_srv; int wined3d_texture; } ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int WINED3DUSAGE_LEGACY_CUBEMAP ;
 int d3d9_srv_wined3d_parent_ops ;
 int wined3d_shader_resource_view_create (struct wined3d_view_desc*,int ,struct d3d9_texture*,int *,struct wined3d_shader_resource_view**) ;
 int wined3d_texture_get_level_count (int ) ;
 int wined3d_texture_get_resource (int ) ;
 int wined3d_texture_get_sub_resource_desc (int ,int ,struct wined3d_sub_resource_desc*) ;

__attribute__((used)) static struct wined3d_shader_resource_view *d3d9_texture_acquire_shader_resource_view(struct d3d9_texture *texture)
{
    struct wined3d_sub_resource_desc sr_desc;
    struct wined3d_view_desc desc;
    HRESULT hr;

    if (texture->wined3d_srv)
        return texture->wined3d_srv;

    wined3d_texture_get_sub_resource_desc(texture->wined3d_texture, 0, &sr_desc);
    desc.format_id = sr_desc.format;
    desc.flags = 0;
    desc.u.texture.level_idx = 0;
    desc.u.texture.level_count = wined3d_texture_get_level_count(texture->wined3d_texture);
    desc.u.texture.layer_idx = 0;
    desc.u.texture.layer_count = sr_desc.usage & WINED3DUSAGE_LEGACY_CUBEMAP ? 6 : 1;
    if (FAILED(hr = wined3d_shader_resource_view_create(&desc,
            wined3d_texture_get_resource(texture->wined3d_texture), texture,
            &d3d9_srv_wined3d_parent_ops, &texture->wined3d_srv)))
    {
        ERR("Failed to create shader resource view, hr %#x.\n", hr);
        return ((void*)0);
    }

    return texture->wined3d_srv;
}
