
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dtex {scalar_t__ system; scalar_t__ device; } ;
typedef int d3d_priv ;
typedef int IDirect3DBaseTexture9 ;



__attribute__((used)) static IDirect3DBaseTexture9 *d3dtex_get_render_texture(d3d_priv *priv,
                                                        struct d3dtex *tex)
{
    return (IDirect3DBaseTexture9 *)(tex->device ? tex->device : tex->system);
}
