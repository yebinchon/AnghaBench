
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct d3dtex {scalar_t__ device; scalar_t__ system; } ;
struct TYPE_3__ {int d3d_device; } ;
typedef TYPE_1__ d3d_priv ;
typedef int IDirect3DBaseTexture9 ;


 int FAILED (int ) ;
 int IDirect3DDevice9_UpdateTexture (int ,int *,int *) ;

__attribute__((used)) static bool d3dtex_update(d3d_priv *priv, struct d3dtex *tex)
{
    if (!tex->device)
        return 1;
    return !FAILED(IDirect3DDevice9_UpdateTexture(priv->d3d_device,
                   (IDirect3DBaseTexture9 *)tex->system,
                   (IDirect3DBaseTexture9 *)tex->device));
}
