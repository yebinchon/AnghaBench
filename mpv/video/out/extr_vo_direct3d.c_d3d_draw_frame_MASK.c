#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {float member_2; float** t; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ vertex_video ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/  _11; } ;
struct TYPE_18__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_17__ {int plane_count; int use_shaders; int /*<<< orphan*/  vo; int /*<<< orphan*/  d3d_backbuf; int /*<<< orphan*/  d3d_surface; int /*<<< orphan*/  d3d_device; TYPE_2__ d3d_colormatrix; int /*<<< orphan*/ ** pixel_shaders; TYPE_1__* planes; scalar_t__ use_textures; TYPE_5__ fs_panscan_rect; TYPE_5__ fs_movie_rect; int /*<<< orphan*/  have_image; } ;
typedef  TYPE_4__ d3d_priv ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_19__ {float tex_w; float tex_h; } ;
struct TYPE_14__ {int shift_x; int shift_y; TYPE_7__ texture; } ;
typedef  TYPE_5__ RECT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DCLEAR_TARGET ; 
 int /*<<< orphan*/  D3DFVF_VIDEO_VERTEX ; 
 int /*<<< orphan*/  D3DPT_TRIANGLESTRIP ; 
 int /*<<< orphan*/  D3DTEXF_LINEAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  VO_ERROR ; 
 int /*<<< orphan*/  VO_TRUE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC12(d3d_priv *priv)
{
    int n;

    if (!priv->d3d_device)
        return VO_TRUE;

    if (!FUNC9(priv))
        return VO_ERROR;

    FUNC1(priv->d3d_device, 0, NULL, D3DCLEAR_TARGET, 0, 0, 0);

    if (!priv->have_image)
        goto render_osd;

    RECT rm = priv->fs_movie_rect;
    RECT rs = priv->fs_panscan_rect;

    if (priv->use_textures) {

        for (n = 0; n < priv->plane_count; n++) {
            FUNC6(priv->d3d_device, n,
                FUNC10(priv, &priv->planes[n].texture));
        }

        vertex_video vb[] = {
            { rm.left,  rm.top,    0.0f},
            { rm.right, rm.top,    0.0f},
            { rm.left,  rm.bottom, 0.0f},
            { rm.right, rm.bottom, 0.0f}
        };

        float texc[4][2] = {
            { rs.left,  rs.top},
            { rs.right, rs.top},
            { rs.left,  rs.bottom},
            { rs.right, rs.bottom}
        };

        for (n = 0; n < priv->plane_count; n++) {
            float s_x = (1.0f / (1 << priv->planes[n].shift_x))
                        / priv->planes[n].texture.tex_w;
            float s_y = (1.0f / (1 << priv->planes[n].shift_y))
                        / priv->planes[n].texture.tex_h;
            for (int i = 0; i < 4; i++) {
                vb[i].t[n][0] = texc[i][0] * s_x;
                vb[i].t[n][1] = texc[i][1] * s_y;
            }
        }

        if (priv->use_shaders) {
            FUNC4(priv->d3d_device,
                                    priv->pixel_shaders[priv->use_shaders]);
            FUNC5(priv->d3d_device, 0,
                                                     &priv->d3d_colormatrix._11,
                                                     4);
        }

        FUNC3(priv->d3d_device, D3DFVF_VIDEO_VERTEX);
        FUNC2(priv->d3d_device, D3DPT_TRIANGLESTRIP,
                                         2, &vb[0], sizeof(vertex_video));

        FUNC4(priv->d3d_device, NULL);

        for (n = 0; n < priv->plane_count; n++) {
            FUNC6(priv->d3d_device, n, NULL);
        }

    } else {
        rs.left &= ~(ULONG)1;
        rs.top &= ~(ULONG)1;
        rs.right &= ~(ULONG)1;
        rs.bottom &= ~(ULONG)1;
        if (FUNC0(FUNC7(priv->d3d_device,
                                                priv->d3d_surface,
                                                &rs,
                                                priv->d3d_backbuf,
                                                &rm,
                                                D3DTEXF_LINEAR))) {
            FUNC8(priv, "Copying frame to the backbuffer failed.\n");
            return VO_ERROR;
        }
    }

render_osd:

    FUNC11(priv->vo);

    return VO_TRUE;
}