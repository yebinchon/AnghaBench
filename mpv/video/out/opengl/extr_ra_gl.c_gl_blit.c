
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_tex_gl {int fbo; } ;
struct TYPE_4__ {int blit_dst; int blit_src; } ;
struct ra_tex {struct ra_tex_gl* priv; TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct mp_rect {int y1; int x1; int y0; int x0; } ;
struct TYPE_5__ {int (* BindFramebuffer ) (int ,int ) ;int (* BlitFramebuffer ) (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__ GL ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_DRAW_FRAMEBUFFER ;
 int GL_NEAREST ;
 int GL_READ_FRAMEBUFFER ;
 int assert (int ) ;
 TYPE_2__* ra_gl_get (struct ra*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;

__attribute__((used)) static void gl_blit(struct ra *ra, struct ra_tex *dst, struct ra_tex *src,
                    struct mp_rect *dst_rc, struct mp_rect *src_rc)
{
    GL *gl = ra_gl_get(ra);

    assert(src->params.blit_src);
    assert(dst->params.blit_dst);

    struct ra_tex_gl *src_gl = src->priv;
    struct ra_tex_gl *dst_gl = dst->priv;

    gl->BindFramebuffer(GL_READ_FRAMEBUFFER, src_gl->fbo);
    gl->BindFramebuffer(GL_DRAW_FRAMEBUFFER, dst_gl->fbo);
    gl->BlitFramebuffer(src_rc->x0, src_rc->y0, src_rc->x1, src_rc->y1,
                        dst_rc->x0, dst_rc->y0, dst_rc->x1, dst_rc->y1,
                        GL_COLOR_BUFFER_BIT, GL_NEAREST);
    gl->BindFramebuffer(GL_READ_FRAMEBUFFER, 0);
    gl->BindFramebuffer(GL_DRAW_FRAMEBUFFER, 0);
}
