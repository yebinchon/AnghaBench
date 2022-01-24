#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vo {struct priv* priv; } ;
struct priv {int image_width; int image_height; int /*<<< orphan*/  dither_algo; int /*<<< orphan*/ * dither; int /*<<< orphan*/  dither_color; int /*<<< orphan*/  dither_charset; int /*<<< orphan*/  dither_antialias; int /*<<< orphan*/  dither_buffer; int /*<<< orphan*/  canvas; int /*<<< orphan*/  screen_h; int /*<<< orphan*/  screen_w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  amask ; 
 int /*<<< orphan*/  bmask ; 
 int /*<<< orphan*/  bpp ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int depth ; 
 int /*<<< orphan*/  gmask ; 
 int /*<<< orphan*/  rmask ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint8_t ; 

__attribute__((used)) static int FUNC11(struct vo *vo)
{
    struct priv *priv = vo->priv;
    priv->screen_w = FUNC4(priv->canvas);
    priv->screen_h = FUNC3(priv->canvas);

    FUNC2(priv->dither);
    FUNC10(priv->dither_buffer);

    priv->dither = FUNC1(bpp, priv->image_width, priv->image_height,
                                depth * priv->image_width,
                                rmask, gmask, bmask, amask);
    if (priv->dither == NULL) {
        FUNC0(vo, "caca_create_dither failed!\n");
        return -1;
    }
    priv->dither_buffer =
        FUNC9(NULL, uint8_t, depth * priv->image_width * priv->image_height);

    /* Default libcaca features */
    FUNC6(priv->dither, priv->dither_antialias);
    FUNC7(priv->dither, priv->dither_charset);
    FUNC8(priv->dither, priv->dither_color);
    FUNC5(priv->dither, priv->dither_algo);

    return 0;
}