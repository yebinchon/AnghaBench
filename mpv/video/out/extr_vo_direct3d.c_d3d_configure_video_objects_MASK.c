#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  tex_h; int /*<<< orphan*/  tex_w; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  system; } ;
struct texplane {int shift_x; int shift_y; TYPE_3__ texture; int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  d3d_format; } ;
struct TYPE_8__ {scalar_t__ image_format; int plane_count; int src_width; int src_height; int /*<<< orphan*/  d3d_surface; int /*<<< orphan*/  movie_src_fmt; int /*<<< orphan*/  d3d_device; struct texplane* planes; scalar_t__ use_textures; } ;
typedef  TYPE_1__ d3d_priv ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool FUNC7(d3d_priv *priv)
{
    int n;
    bool need_clear = false;

    FUNC4(priv->image_format != 0);

    if (priv->use_textures) {
        for (n = 0; n < priv->plane_count; n++) {
            struct texplane *plane = &priv->planes[n];

            if (!plane->texture.system) {
                if (!FUNC6(priv,
                                     &plane->texture,
                                     plane->d3d_format,
                                     priv->src_width >> plane->shift_x,
                                     priv->src_height >> plane->shift_y))
                {
                    FUNC2(priv, "Allocating plane %d"
                           " failed.\n", n);
                    return false;
                }

                FUNC3(priv, "Allocated plane %d:"
                       " %d bit, shift=%d/%d size=%d/%d (%d/%d).\n", n,
                       plane->bits_per_pixel,
                       plane->shift_x, plane->shift_y,
                       plane->texture.w, plane->texture.h,
                       plane->texture.tex_w, plane->texture.tex_h);

                need_clear = true;
            }
        }

        if (need_clear)
            FUNC5(priv);

    } else {

        if (!priv->d3d_surface &&
            FUNC0(FUNC1(
                priv->d3d_device, priv->src_width, priv->src_height,
                priv->movie_src_fmt, D3DPOOL_DEFAULT, &priv->d3d_surface, NULL)))
        {
            FUNC2(priv, "Allocating offscreen surface failed.\n");
            return false;
        }
    }

    return true;
}