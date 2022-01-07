
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vertex_osd ;
struct sub_bitmaps {scalar_t__ format; } ;
struct osdpart {int num_vertices; int vertices; int texture; } ;
struct TYPE_5__ {int d3d_device; } ;
typedef TYPE_1__ d3d_priv ;


 int D3DBLEND_ONE ;
 int D3DBLEND_SRCALPHA ;
 int D3DFVF_OSD_VERTEX ;
 int D3DPT_TRIANGLELIST ;
 int D3DRS_ALPHABLENDENABLE ;
 int D3DRS_SRCBLEND ;
 int D3DRS_TEXTUREFACTOR ;
 int D3DTA_TEXTURE ;
 int D3DTA_TFACTOR ;
 int D3DTOP_MODULATE ;
 int D3DTOP_SELECTARG1 ;
 int D3DTSS_ALPHAOP ;
 int D3DTSS_COLORARG1 ;
 int FALSE ;
 int IDirect3DDevice9_DrawPrimitiveUP (int ,int ,int,int ,int) ;
 int IDirect3DDevice9_SetFVF (int ,int ) ;
 int IDirect3DDevice9_SetRenderState (int ,int ,int) ;
 int IDirect3DDevice9_SetTexture (int ,int ,int *) ;
 int IDirect3DDevice9_SetTextureStageState (int ,int ,int ,int ) ;
 scalar_t__ SUBBITMAP_LIBASS ;
 int TRUE ;
 int d3d_begin_scene (TYPE_1__*) ;
 int * d3dtex_get_render_texture (TYPE_1__*,int *) ;
 struct osdpart* generate_osd (TYPE_1__*,struct sub_bitmaps*) ;

__attribute__((used)) static void draw_osd_cb(void *ctx, struct sub_bitmaps *imgs)
{
    d3d_priv *priv = ctx;

    struct osdpart *osd = generate_osd(priv, imgs);
    if (!osd)
        return;

    d3d_begin_scene(priv);

    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_ALPHABLENDENABLE, TRUE);

    IDirect3DDevice9_SetTexture(priv->d3d_device, 0,
                                d3dtex_get_render_texture(priv, &osd->texture));

    if (imgs->format == SUBBITMAP_LIBASS) {

        IDirect3DDevice9_SetRenderState(priv->d3d_device,D3DRS_TEXTUREFACTOR,
                                        0xFFFFFFFF);
        IDirect3DDevice9_SetTextureStageState(priv->d3d_device,0,
                                            D3DTSS_COLORARG1, D3DTA_TFACTOR);

        IDirect3DDevice9_SetTextureStageState(priv->d3d_device, 0,
                                            D3DTSS_ALPHAOP, D3DTOP_MODULATE);
    } else {
        IDirect3DDevice9_SetRenderState(priv->d3d_device, D3DRS_SRCBLEND,
                                        D3DBLEND_ONE);
    }

    IDirect3DDevice9_SetFVF(priv->d3d_device, D3DFVF_OSD_VERTEX);
    IDirect3DDevice9_DrawPrimitiveUP(priv->d3d_device, D3DPT_TRIANGLELIST,
                                     osd->num_vertices / 3,
                                     osd->vertices, sizeof(vertex_osd));

    IDirect3DDevice9_SetTextureStageState(priv->d3d_device,0,
                                          D3DTSS_COLORARG1, D3DTA_TEXTURE);
    IDirect3DDevice9_SetTextureStageState(priv->d3d_device, 0,
                                          D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);

    IDirect3DDevice9_SetTexture(priv->d3d_device, 0, ((void*)0));

    IDirect3DDevice9_SetRenderState(priv->d3d_device,
                                    D3DRS_ALPHABLENDENABLE, FALSE);
}
