
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vo {int osd; TYPE_1__* priv; } ;
struct TYPE_3__ {int osd_pts; int osd_res; int * osd_fmt_table; int d3d_device; } ;
typedef TYPE_1__ d3d_priv ;


 int SUBBITMAP_COUNT ;
 int draw_osd_cb ;
 int osd_draw (int ,int ,int ,int ,int*,int ,TYPE_1__*) ;

__attribute__((used)) static void draw_osd(struct vo *vo)
{
    d3d_priv *priv = vo->priv;
    if (!priv->d3d_device)
        return;

    bool osd_fmt_supported[SUBBITMAP_COUNT];
    for (int n = 0; n < SUBBITMAP_COUNT; n++)
        osd_fmt_supported[n] = !!priv->osd_fmt_table[n];

    osd_draw(vo->osd, priv->osd_res, priv->osd_pts, 0, osd_fmt_supported,
             draw_osd_cb, priv);
}
