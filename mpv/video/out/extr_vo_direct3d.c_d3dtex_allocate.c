
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct d3dtex {int w; int h; int tex_w; int tex_h; int device; int system; } ;
struct TYPE_6__ {int opt_texture_memory; int d3d_device; int device_texture_sys; } ;
typedef TYPE_1__ d3d_priv ;
typedef int D3DFORMAT ;


 int D3DPOOL_DEFAULT ;
 int D3DPOOL_MANAGED ;
 int D3DPOOL_SCRATCH ;
 int D3DPOOL_SYSTEMMEM ;
 int D3DUSAGE_DYNAMIC ;
 scalar_t__ FAILED (int ) ;
 int IDirect3DDevice9_CreateTexture (int ,int,int,int,int ,int ,int,int *,int *) ;
 int MP_ERR (TYPE_1__*,char*,int,int) ;
 int d3d_fix_texture_size (TYPE_1__*,int*,int*) ;
 int d3dtex_release (TYPE_1__*,struct d3dtex*) ;

__attribute__((used)) static bool d3dtex_allocate(d3d_priv *priv, struct d3dtex *tex, D3DFORMAT fmt,
                            int w, int h)
{
    d3dtex_release(priv, tex);

    tex->w = w;
    tex->h = h;

    int tw = w, th = h;
    d3d_fix_texture_size(priv, &tw, &th);

    bool use_sh = !priv->device_texture_sys;
    int memtype = D3DPOOL_SYSTEMMEM;
    switch (priv->opt_texture_memory) {
    case 1: memtype = D3DPOOL_MANAGED; use_sh = 0; break;
    case 2: memtype = D3DPOOL_DEFAULT; use_sh = 0; break;
    case 3: memtype = D3DPOOL_DEFAULT; use_sh = 1; break;
    case 4: memtype = D3DPOOL_SCRATCH; use_sh = 1; break;
    }

    if (FAILED(IDirect3DDevice9_CreateTexture(priv->d3d_device, tw, th, 1,
        D3DUSAGE_DYNAMIC, fmt, memtype, &tex->system, ((void*)0))))
    {
        MP_ERR(priv, "Allocating %dx%d texture in system RAM failed.\n", w, h);
        goto error_exit;
    }

    if (use_sh) {
        if (FAILED(IDirect3DDevice9_CreateTexture(priv->d3d_device, tw, th, 1,
            D3DUSAGE_DYNAMIC, fmt, D3DPOOL_DEFAULT, &tex->device, ((void*)0))))
        {
            MP_ERR(priv, "Allocating %dx%d texture in video RAM failed.\n", w, h);
            goto error_exit;
        }
    }

    tex->tex_w = tw;
    tex->tex_h = th;

    return 1;

error_exit:
    d3dtex_release(priv, tex);
    return 0;
}
