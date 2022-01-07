
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h; int w; } ;
struct ra_tex {int priv; TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct pl_rect3d {void* y1; void* x1; void* y0; void* x0; int member_0; } ;
struct mp_rect {int y1; int x1; int y0; int x0; } ;


 int MPMAX (int ,int ) ;
 void* MPMIN (int ,int ) ;
 int get_gpu (struct ra*) ;
 int pl_tex_blit (int ,int ,int ,struct pl_rect3d,struct pl_rect3d) ;

__attribute__((used)) static void blit_pl(struct ra *ra, struct ra_tex *dst, struct ra_tex *src,
                    struct mp_rect *dst_rc, struct mp_rect *src_rc)
{
    struct pl_rect3d plsrc = {0}, pldst = {0};
    if (src_rc) {
        plsrc.x0 = MPMIN(MPMAX(src_rc->x0, 0), src->params.w);
        plsrc.y0 = MPMIN(MPMAX(src_rc->y0, 0), src->params.h);
        plsrc.x1 = MPMIN(MPMAX(src_rc->x1, 0), src->params.w);
        plsrc.y1 = MPMIN(MPMAX(src_rc->y1, 0), src->params.h);
    }

    if (dst_rc) {
        pldst.x0 = MPMIN(MPMAX(dst_rc->x0, 0), dst->params.w);
        pldst.y0 = MPMIN(MPMAX(dst_rc->y0, 0), dst->params.h);
        pldst.x1 = MPMIN(MPMAX(dst_rc->x1, 0), dst->params.w);
        pldst.y1 = MPMIN(MPMAX(dst_rc->y1, 0), dst->params.h);
    }

    pl_tex_blit(get_gpu(ra), dst->priv, src->priv, pldst, plsrc);
}
