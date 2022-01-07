
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvctx {int src_rect; int dst_rect; } ;
struct vo {int want_redraw; int input_ctx; struct xvctx* priv; } ;
struct mp_osd_res {int dummy; } ;


 int mp_input_set_mouse_transform (int ,int *,int *) ;
 int read_xv_csp (struct vo*) ;
 int vo_get_src_dst_rects (struct vo*,int *,int *,struct mp_osd_res*) ;
 int vo_x11_clear_background (struct vo*,int *) ;
 int xv_draw_colorkey (struct vo*,int *) ;

__attribute__((used)) static void resize(struct vo *vo)
{
    struct xvctx *ctx = vo->priv;



    struct mp_osd_res unused;

    vo_get_src_dst_rects(vo, &ctx->src_rect, &ctx->dst_rect, &unused);

    vo_x11_clear_background(vo, &ctx->dst_rect);
    xv_draw_colorkey(vo, &ctx->dst_rect);
    read_xv_csp(vo);

    mp_input_set_mouse_transform(vo->input_ctx, &ctx->dst_rect, &ctx->src_rect);

    vo->want_redraw = 1;
}
