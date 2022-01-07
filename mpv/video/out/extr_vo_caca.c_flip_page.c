
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int display; } ;


 int caca_refresh_display (int ) ;

__attribute__((used)) static void flip_page(struct vo *vo)
{
    struct priv *priv = vo->priv;
    caca_refresh_display(priv->display);
}
