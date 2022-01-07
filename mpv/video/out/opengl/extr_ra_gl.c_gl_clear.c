
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_tex_gl {int fbo; } ;
struct TYPE_4__ {int render_dst; } ;
struct ra_tex {struct ra_tex_gl* priv; TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct mp_rect {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_5__ {int (* BindFramebuffer ) (int ,int ) ;int (* Disable ) (int ) ;int (* Clear ) (int ) ;int (* ClearColor ) (float,float,float,float) ;int (* Enable ) (int ) ;int (* Scissor ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;} ;
typedef TYPE_2__ GL ;


 int GL_COLOR_BUFFER_BIT ;
 int GL_FRAMEBUFFER ;
 int GL_SCISSOR_TEST ;
 int assert (int ) ;
 TYPE_2__* ra_gl_get (struct ra*) ;
 int stub1 (int ,int ) ;
 int stub2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int stub3 (int ) ;
 int stub4 (float,float,float,float) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int stub7 (int ,int ) ;

__attribute__((used)) static void gl_clear(struct ra *ra, struct ra_tex *dst, float color[4],
                     struct mp_rect *scissor)
{
    GL *gl = ra_gl_get(ra);

    assert(dst->params.render_dst);
    struct ra_tex_gl *dst_gl = dst->priv;

    gl->BindFramebuffer(GL_FRAMEBUFFER, dst_gl->fbo);

    gl->Scissor(scissor->x0, scissor->y0,
                scissor->x1 - scissor->x0,
                scissor->y1 - scissor->y0);

    gl->Enable(GL_SCISSOR_TEST);
    gl->ClearColor(color[0], color[1], color[2], color[3]);
    gl->Clear(GL_COLOR_BUFFER_BIT);
    gl->Disable(GL_SCISSOR_TEST);

    gl->BindFramebuffer(GL_FRAMEBUFFER, 0);
}
