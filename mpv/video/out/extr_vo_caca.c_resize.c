
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int image_width; int image_height; int dither_algo; int * dither; int dither_color; int dither_charset; int dither_antialias; int dither_buffer; int canvas; int screen_h; int screen_w; } ;


 int MP_FATAL (struct vo*,char*) ;
 int amask ;
 int bmask ;
 int bpp ;
 int * caca_create_dither (int ,int,int,int,int ,int ,int ,int ) ;
 int caca_free_dither (int *) ;
 int caca_get_canvas_height (int ) ;
 int caca_get_canvas_width (int ) ;
 int caca_set_dither_algorithm (int *,int ) ;
 int caca_set_dither_antialias (int *,int ) ;
 int caca_set_dither_charset (int *,int ) ;
 int caca_set_dither_color (int *,int ) ;
 int depth ;
 int gmask ;
 int rmask ;
 int talloc_array (int *,int ,int) ;
 int talloc_free (int ) ;
 int uint8_t ;

__attribute__((used)) static int resize(struct vo *vo)
{
    struct priv *priv = vo->priv;
    priv->screen_w = caca_get_canvas_width(priv->canvas);
    priv->screen_h = caca_get_canvas_height(priv->canvas);

    caca_free_dither(priv->dither);
    talloc_free(priv->dither_buffer);

    priv->dither = caca_create_dither(bpp, priv->image_width, priv->image_height,
                                depth * priv->image_width,
                                rmask, gmask, bmask, amask);
    if (priv->dither == ((void*)0)) {
        MP_FATAL(vo, "caca_create_dither failed!\n");
        return -1;
    }
    priv->dither_buffer =
        talloc_array(((void*)0), uint8_t, depth * priv->image_width * priv->image_height);


    caca_set_dither_antialias(priv->dither, priv->dither_antialias);
    caca_set_dither_charset(priv->dither, priv->dither_charset);
    caca_set_dither_color(priv->dither, priv->dither_color);
    caca_set_dither_algorithm(priv->dither, priv->dither_algo);

    return 0;
}
