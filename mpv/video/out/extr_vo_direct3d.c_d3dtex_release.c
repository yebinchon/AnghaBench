
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dtex {scalar_t__ tex_h; scalar_t__ tex_w; int * device; int * system; } ;
typedef int d3d_priv ;


 int IDirect3DTexture9_Release (int *) ;

__attribute__((used)) static void d3dtex_release(d3d_priv *priv, struct d3dtex *tex)
{
    if (tex->system)
        IDirect3DTexture9_Release(tex->system);
    tex->system = ((void*)0);

    if (tex->device)
        IDirect3DTexture9_Release(tex->device);
    tex->device = ((void*)0);

    tex->tex_w = tex->tex_h = 0;
}
