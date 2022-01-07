
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int d3d_device; int d3d_backbuf; } ;
typedef TYPE_1__ d3d_priv ;
typedef int DWORD ;


 int D3DBACKBUFFER_TYPE_MONO ;
 int D3DBLEND_INVSRCALPHA ;
 int D3DBLEND_SRCALPHA ;
 int D3DCMP_GREATER ;
 int D3DRS_ALPHAFUNC ;
 int D3DRS_ALPHAREF ;
 int D3DRS_DESTBLEND ;
 int D3DRS_LIGHTING ;
 int D3DRS_SRCBLEND ;
 int D3DSAMP_ADDRESSU ;
 int D3DSAMP_ADDRESSV ;
 int D3DSAMP_MAGFILTER ;
 int D3DSAMP_MINFILTER ;
 int D3DTADDRESS_CLAMP ;
 int D3DTEXF_LINEAR ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int IDirect3DDevice9_GetBackBuffer (int ,int ,int ,int ,int *) ;
 int IDirect3DDevice9_SetRenderState (int ,int ,int ) ;
 int IDirect3DDevice9_SetSamplerState (int ,int,int ,int ) ;
 int MP_ERR (TYPE_1__*,char*) ;
 int MP_VERBOSE (TYPE_1__*,char*) ;
 int d3d_configure_video_objects (TYPE_1__*) ;

__attribute__((used)) static bool create_d3d_surfaces(d3d_priv *priv)
{
    MP_VERBOSE(priv, "create_d3d_surfaces called.\n");

    if (!priv->d3d_backbuf &&
        FAILED(IDirect3DDevice9_GetBackBuffer(priv->d3d_device, 0, 0,
                                              D3DBACKBUFFER_TYPE_MONO,
                                              &priv->d3d_backbuf))) {
        MP_ERR(priv, "Allocating backbuffer failed.\n");
        return 0;
    }

    if (!d3d_configure_video_objects(priv))
        return 0;


    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);
    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);
    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_ALPHAFUNC, D3DCMP_GREATER);
    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_ALPHAREF, (DWORD)0x0);
    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_LIGHTING, FALSE);


    for (int n = 0; n < 3; n++) {
        IDirect3DDevice9_SetSamplerState(priv->d3d_device, n, D3DSAMP_MINFILTER,
                                         D3DTEXF_LINEAR);
        IDirect3DDevice9_SetSamplerState(priv->d3d_device, n, D3DSAMP_MAGFILTER,
                                         D3DTEXF_LINEAR);
        IDirect3DDevice9_SetSamplerState(priv->d3d_device, n, D3DSAMP_ADDRESSU,
                                         D3DTADDRESS_CLAMP);
        IDirect3DDevice9_SetSamplerState(priv->d3d_device, n, D3DSAMP_ADDRESSV,
                                         D3DTADDRESS_CLAMP);
    }

    return 1;
}
