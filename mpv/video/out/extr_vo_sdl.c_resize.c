
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dwidth; int dheight; int want_redraw; struct priv* priv; } ;
struct priv {int renderer; int osd_res; int dst_rect; int src_rect; } ;


 int SDL_RenderSetLogicalSize (int ,int,int) ;
 int vo_get_src_dst_rects (struct vo*,int *,int *,int *) ;
 int vo_wakeup (struct vo*) ;

__attribute__((used)) static void resize(struct vo *vo, int w, int h)
{
    struct priv *vc = vo->priv;
    vo->dwidth = w;
    vo->dheight = h;
    vo_get_src_dst_rects(vo, &vc->src_rect, &vc->dst_rect,
                         &vc->osd_res);
    SDL_RenderSetLogicalSize(vc->renderer, w, h);
    vo->want_redraw = 1;
    vo_wakeup(vo);
}
