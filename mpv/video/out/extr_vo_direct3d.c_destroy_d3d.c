
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * d3d_handle; int * d3d_device; int ** pixel_shaders; } ;
typedef TYPE_1__ d3d_priv ;


 int IDirect3D9_Release (int *) ;
 int IDirect3DDevice9_Release (int *) ;
 int IDirect3DPixelShader9_Release (int *) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int NUM_SHADERS ;
 int destroy_d3d_surfaces (TYPE_1__*) ;

__attribute__((used)) static void destroy_d3d(d3d_priv *priv)
{
    destroy_d3d_surfaces(priv);

    for (int n = 0; n < NUM_SHADERS; n++) {
        if (priv->pixel_shaders[n])
            IDirect3DPixelShader9_Release(priv->pixel_shaders[n]);
        priv->pixel_shaders[n] = ((void*)0);
    }

    if (priv->d3d_device)
        IDirect3DDevice9_Release(priv->d3d_device);
    priv->d3d_device = ((void*)0);

    if (priv->d3d_handle) {
        MP_VERBOSE(priv, "Stopping Direct3D.\n");
        IDirect3D9_Release(priv->d3d_handle);
    }
    priv->d3d_handle = ((void*)0);
}
