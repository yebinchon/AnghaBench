
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ra_tex_gl {int fbo; } ;
struct TYPE_12__ {int y0; int x0; } ;
struct ra_renderpass_run_params {int num_values; int * values; int * compute_groups; int vertex_count; int vertex_data; TYPE_6__ scissors; TYPE_6__ viewport; TYPE_2__* target; struct ra_renderpass* pass; } ;
struct ra_renderpass_gl {int vao; int program; } ;
struct TYPE_10__ {int type; int blend_dst_alpha; int blend_src_alpha; int blend_dst_rgb; int blend_src_rgb; int enable_blend; int invalidate_target; int target_format; } ;
struct ra_renderpass {TYPE_3__ params; struct ra_renderpass_gl* priv; } ;
struct ra {int dummy; } ;
struct TYPE_11__ {int (* UseProgram ) (int ) ;int (* ActiveTexture ) (int ) ;int (* MemoryBarrier ) (int ) ;int (* DispatchCompute ) (int ,int ,int ) ;int (* BindFramebuffer ) (int ,int ) ;int (* Disable ) (int ) ;int (* Enable ) (int ) ;int (* BlendFuncSeparate ) (int ,int ,int ,int ) ;int (* Scissor ) (int ,int ,int ,int ) ;int (* Viewport ) (int ,int ,int ,int ) ;int (* InvalidateFramebuffer ) (int ,int,int *) ;} ;
struct TYPE_8__ {int render_dst; int format; } ;
struct TYPE_9__ {TYPE_1__ params; struct ra_tex_gl* priv; } ;
typedef int GLenum ;
typedef TYPE_4__ GL ;


 int GL_BLEND ;
 int GL_COLOR ;
 int GL_COLOR_ATTACHMENT0 ;
 int GL_FRAMEBUFFER ;
 int GL_SCISSOR_TEST ;
 int GL_TEXTURE0 ;
 int GL_TEXTURE_FETCH_BARRIER_BIT ;
 int GL_TRIANGLES ;


 int abort () ;
 int assert (int) ;
 int disable_binding (struct ra*,struct ra_renderpass*,int *) ;
 int gl_vao_draw_data (int *,int ,int ,int ) ;
 int map_blend (int ) ;
 int mp_rect_h (TYPE_6__) ;
 int mp_rect_w (TYPE_6__) ;
 TYPE_4__* ra_gl_get (struct ra*) ;
 int stub1 (int ) ;
 int stub10 (int ) ;
 int stub11 (int ) ;
 int stub12 (int ,int ) ;
 int stub13 (int ,int ,int ) ;
 int stub14 (int ) ;
 int stub15 (int ) ;
 int stub16 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int,int *) ;
 int stub5 (int ,int ,int ,int ) ;
 int stub6 (int ,int ,int ,int ) ;
 int stub7 (int ) ;
 int stub8 (int ,int ,int ,int ) ;
 int stub9 (int ) ;
 int update_uniform (struct ra*,struct ra_renderpass*,int *) ;

__attribute__((used)) static void gl_renderpass_run(struct ra *ra,
                              const struct ra_renderpass_run_params *params)
{
    GL *gl = ra_gl_get(ra);
    struct ra_renderpass *pass = params->pass;
    struct ra_renderpass_gl *pass_gl = pass->priv;

    gl->UseProgram(pass_gl->program);

    for (int n = 0; n < params->num_values; n++)
        update_uniform(ra, pass, &params->values[n]);
    gl->ActiveTexture(GL_TEXTURE0);

    switch (pass->params.type) {
    case 128: {
        struct ra_tex_gl *target_gl = params->target->priv;
        assert(params->target->params.render_dst);
        assert(params->target->params.format == pass->params.target_format);
        gl->BindFramebuffer(GL_FRAMEBUFFER, target_gl->fbo);
        if (pass->params.invalidate_target && gl->InvalidateFramebuffer) {
            GLenum fb = target_gl->fbo ? GL_COLOR_ATTACHMENT0 : GL_COLOR;
            gl->InvalidateFramebuffer(GL_FRAMEBUFFER, 1, &fb);
        }
        gl->Viewport(params->viewport.x0, params->viewport.y0,
                     mp_rect_w(params->viewport),
                     mp_rect_h(params->viewport));
        gl->Scissor(params->scissors.x0, params->scissors.y0,
                    mp_rect_w(params->scissors),
                    mp_rect_h(params->scissors));
        gl->Enable(GL_SCISSOR_TEST);
        if (pass->params.enable_blend) {
            gl->BlendFuncSeparate(map_blend(pass->params.blend_src_rgb),
                                  map_blend(pass->params.blend_dst_rgb),
                                  map_blend(pass->params.blend_src_alpha),
                                  map_blend(pass->params.blend_dst_alpha));
            gl->Enable(GL_BLEND);
        }
        gl_vao_draw_data(&pass_gl->vao, GL_TRIANGLES, params->vertex_data,
                         params->vertex_count);
        gl->Disable(GL_SCISSOR_TEST);
        gl->Disable(GL_BLEND);
        gl->BindFramebuffer(GL_FRAMEBUFFER, 0);
        break;
    }
    case 129: {
        gl->DispatchCompute(params->compute_groups[0],
                            params->compute_groups[1],
                            params->compute_groups[2]);

        gl->MemoryBarrier(GL_TEXTURE_FETCH_BARRIER_BIT);
        break;
    }
    default: abort();
    }

    for (int n = 0; n < params->num_values; n++)
        disable_binding(ra, pass, &params->values[n]);
    gl->ActiveTexture(GL_TEXTURE0);

    gl->UseProgram(0);
}
