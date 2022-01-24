#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vertex_osd ;
struct sub_bitmaps {scalar_t__ format; } ;
struct osdpart {int num_vertices; int /*<<< orphan*/  vertices; int /*<<< orphan*/  texture; } ;
struct TYPE_5__ {int /*<<< orphan*/  d3d_device; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int D3DBLEND_ONE ; 
 int D3DBLEND_SRCALPHA ; 
 int /*<<< orphan*/  D3DFVF_OSD_VERTEX ; 
 int /*<<< orphan*/  D3DPT_TRIANGLELIST ; 
 int /*<<< orphan*/  D3DRS_ALPHABLENDENABLE ; 
 int /*<<< orphan*/  D3DRS_SRCBLEND ; 
 int /*<<< orphan*/  D3DRS_TEXTUREFACTOR ; 
 int /*<<< orphan*/  D3DTA_TEXTURE ; 
 int /*<<< orphan*/  D3DTA_TFACTOR ; 
 int /*<<< orphan*/  D3DTOP_MODULATE ; 
 int /*<<< orphan*/  D3DTOP_SELECTARG1 ; 
 int /*<<< orphan*/  D3DTSS_ALPHAOP ; 
 int /*<<< orphan*/  D3DTSS_COLORARG1 ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SUBBITMAP_LIBASS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct osdpart* FUNC7 (TYPE_1__*,struct sub_bitmaps*) ; 

__attribute__((used)) static void FUNC8(void *ctx, struct sub_bitmaps *imgs)
{
    d3d_priv *priv = ctx;

    struct osdpart *osd = FUNC7(priv, imgs);
    if (!osd)
        return;

    FUNC5(priv);

    FUNC2(priv->d3d_device,
                                    D3DRS_ALPHABLENDENABLE, TRUE);

    FUNC3(priv->d3d_device, 0,
                                FUNC6(priv, &osd->texture));

    if (imgs->format == SUBBITMAP_LIBASS) {
        // do not use the color value from the A8 texture, because that is black
        FUNC2(priv->d3d_device,D3DRS_TEXTUREFACTOR,
                                        0xFFFFFFFF);
        FUNC4(priv->d3d_device,0,
                                            D3DTSS_COLORARG1, D3DTA_TFACTOR);

        FUNC4(priv->d3d_device, 0,
                                            D3DTSS_ALPHAOP, D3DTOP_MODULATE);
    } else {
        FUNC2(priv->d3d_device, D3DRS_SRCBLEND,
                                        D3DBLEND_ONE);
    }

    FUNC1(priv->d3d_device, D3DFVF_OSD_VERTEX);
    FUNC0(priv->d3d_device, D3DPT_TRIANGLELIST,
                                     osd->num_vertices / 3,
                                     osd->vertices, sizeof(vertex_osd));

    FUNC4(priv->d3d_device,0,
                                          D3DTSS_COLORARG1, D3DTA_TEXTURE);
    FUNC4(priv->d3d_device, 0,
                                          D3DTSS_ALPHAOP, D3DTOP_SELECTARG1);
    FUNC2(priv->d3d_device,
                                    D3DRS_SRCBLEND, D3DBLEND_SRCALPHA);

    FUNC3(priv->d3d_device, 0, NULL);

    FUNC2(priv->d3d_device,
                                    D3DRS_ALPHABLENDENABLE, FALSE);
}