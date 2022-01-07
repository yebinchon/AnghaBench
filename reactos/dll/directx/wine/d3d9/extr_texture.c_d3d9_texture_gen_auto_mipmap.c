
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d9_texture {int flags; int wined3d_srv; } ;


 int D3D9_TEXTURE_MIPMAP_DIRTY ;
 int d3d9_texture_acquire_shader_resource_view (struct d3d9_texture*) ;
 int wined3d_shader_resource_view_generate_mipmaps (int ) ;

void d3d9_texture_gen_auto_mipmap(struct d3d9_texture *texture)
{
    if (!(texture->flags & D3D9_TEXTURE_MIPMAP_DIRTY))
        return;
    d3d9_texture_acquire_shader_resource_view(texture);
    wined3d_shader_resource_view_generate_mipmaps(texture->wined3d_srv);
    texture->flags &= ~D3D9_TEXTURE_MIPMAP_DIRTY;
}
