
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {char* dither_antialias; char* dither_charset; char* dither_color; char* dither_algo; int * canvas; int * display; } ;


 int ENOSYS ;
 int MP_ERR (struct vo*,char*) ;
 int * caca_create_canvas (int ,int ) ;
 int * caca_create_display (int *) ;
 int caca_free_canvas (int *) ;

__attribute__((used)) static int preinit(struct vo *vo)
{
    struct priv *priv = vo->priv;

    priv->dither_antialias = "default";
    priv->dither_charset = "default";
    priv->dither_color = "default";
    priv->dither_algo = "none";

    priv->canvas = caca_create_canvas(0, 0);
    if (priv->canvas == ((void*)0)) {
        MP_ERR(vo, "failed to create canvas\n");
        return ENOSYS;
    }

    priv->display = caca_create_display(priv->canvas);

    if (priv->display == ((void*)0)) {
        MP_ERR(vo, "failed to create display\n");
        caca_free_canvas(priv->canvas);
        return ENOSYS;
    }

    return 0;
}
