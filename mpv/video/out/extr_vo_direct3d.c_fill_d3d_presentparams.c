
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int desktop_fmt; int cur_backbuf_height; int cur_backbuf_width; int vo; scalar_t__ opt_swap_discard; } ;
typedef TYPE_1__ d3d_priv ;
struct TYPE_7__ {int BackBufferCount; int EnableAutoDepthStencil; int BackBufferFormat; int PresentationInterval; int MultiSampleType; int BackBufferHeight; int BackBufferWidth; int hDeviceWindow; int Flags; int SwapEffect; int Windowed; } ;
typedef TYPE_2__ D3DPRESENT_PARAMETERS ;


 int D3DMULTISAMPLE_NONE ;
 int D3DPRESENTFLAG_VIDEO ;
 int D3DPRESENT_INTERVAL_ONE ;
 int D3DSWAPEFFECT_COPY ;
 int D3DSWAPEFFECT_DISCARD ;
 int FALSE ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;
 int vo_w32_hwnd (int ) ;

__attribute__((used)) static void fill_d3d_presentparams(d3d_priv *priv,
                                   D3DPRESENT_PARAMETERS *present_params)
{

    memset(present_params, 0, sizeof(D3DPRESENT_PARAMETERS));
    present_params->Windowed = TRUE;
    present_params->SwapEffect =
        priv->opt_swap_discard ? D3DSWAPEFFECT_DISCARD : D3DSWAPEFFECT_COPY;
    present_params->Flags = D3DPRESENTFLAG_VIDEO;
    present_params->hDeviceWindow = vo_w32_hwnd(priv->vo);
    present_params->BackBufferWidth = priv->cur_backbuf_width;
    present_params->BackBufferHeight = priv->cur_backbuf_height;
    present_params->MultiSampleType = D3DMULTISAMPLE_NONE;
    present_params->PresentationInterval = D3DPRESENT_INTERVAL_ONE;
    present_params->BackBufferFormat = priv->desktop_fmt;
    present_params->BackBufferCount = 1;
    present_params->EnableAutoDepthStencil = FALSE;
}
