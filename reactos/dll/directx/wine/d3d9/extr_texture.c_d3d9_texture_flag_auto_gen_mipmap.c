
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d9_texture {int usage; int flags; } ;


 int D3D9_TEXTURE_MIPMAP_DIRTY ;
 int D3DUSAGE_AUTOGENMIPMAP ;

void d3d9_texture_flag_auto_gen_mipmap(struct d3d9_texture *texture)
{
    if (texture->usage & D3DUSAGE_AUTOGENMIPMAP)
        texture->flags |= D3D9_TEXTURE_MIPMAP_DIRTY;
}
