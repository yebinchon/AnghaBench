
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int canvas; int display; int * dither_buffer; int * dither; } ;


 int caca_free_canvas (int ) ;
 int caca_free_display (int ) ;
 int caca_free_dither (int *) ;
 int talloc_free (int *) ;

__attribute__((used)) static void uninit(struct vo *vo)
{
    struct priv *priv = vo->priv;
    caca_free_dither(priv->dither);
    priv->dither = ((void*)0);
    talloc_free(priv->dither_buffer);
    priv->dither_buffer = ((void*)0);
    caca_free_display(priv->display);
    caca_free_canvas(priv->canvas);
}
