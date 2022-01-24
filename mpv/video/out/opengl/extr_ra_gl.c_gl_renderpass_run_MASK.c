#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ra_tex_gl {int /*<<< orphan*/  fbo; } ;
struct TYPE_12__ {int /*<<< orphan*/  y0; int /*<<< orphan*/  x0; } ;
struct ra_renderpass_run_params {int num_values; int /*<<< orphan*/ * values; int /*<<< orphan*/ * compute_groups; int /*<<< orphan*/  vertex_count; int /*<<< orphan*/  vertex_data; TYPE_6__ scissors; TYPE_6__ viewport; TYPE_2__* target; struct ra_renderpass* pass; } ;
struct ra_renderpass_gl {int /*<<< orphan*/  vao; int /*<<< orphan*/  program; } ;
struct TYPE_10__ {int type; int /*<<< orphan*/  blend_dst_alpha; int /*<<< orphan*/  blend_src_alpha; int /*<<< orphan*/  blend_dst_rgb; int /*<<< orphan*/  blend_src_rgb; int /*<<< orphan*/  enable_blend; int /*<<< orphan*/  invalidate_target; int /*<<< orphan*/  target_format; } ;
struct ra_renderpass {TYPE_3__ params; struct ra_renderpass_gl* priv; } ;
struct ra {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* UseProgram ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ActiveTexture ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* MemoryBarrier ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DispatchCompute ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BindFramebuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Disable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Enable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BlendFuncSeparate ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Scissor ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Viewport ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* InvalidateFramebuffer ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int render_dst; int /*<<< orphan*/  format; } ;
struct TYPE_9__ {TYPE_1__ params; struct ra_tex_gl* priv; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  TYPE_4__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_COLOR ; 
 int /*<<< orphan*/  GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_FETCH_BARRIER_BIT ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
#define  RA_RENDERPASS_TYPE_COMPUTE 129 
#define  RA_RENDERPASS_TYPE_RASTER 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ra*,struct ra_renderpass*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__) ; 
 TYPE_4__* FUNC7 (struct ra*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ra*,struct ra_renderpass*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC25(struct ra *ra,
                              const struct ra_renderpass_run_params *params)
{
    GL *gl = FUNC7(ra);
    struct ra_renderpass *pass = params->pass;
    struct ra_renderpass_gl *pass_gl = pass->priv;

    gl->UseProgram(pass_gl->program);

    for (int n = 0; n < params->num_values; n++)
        FUNC24(ra, pass, &params->values[n]);
    gl->ActiveTexture(GL_TEXTURE0);

    switch (pass->params.type) {
    case RA_RENDERPASS_TYPE_RASTER: {
        struct ra_tex_gl *target_gl = params->target->priv;
        FUNC1(params->target->params.render_dst);
        FUNC1(params->target->params.format == pass->params.target_format);
        gl->BindFramebuffer(GL_FRAMEBUFFER, target_gl->fbo);
        if (pass->params.invalidate_target && gl->InvalidateFramebuffer) {
            GLenum fb = target_gl->fbo ? GL_COLOR_ATTACHMENT0 : GL_COLOR;
            gl->InvalidateFramebuffer(GL_FRAMEBUFFER, 1, &fb);
        }
        gl->Viewport(params->viewport.x0, params->viewport.y0,
                     FUNC6(params->viewport),
                     FUNC5(params->viewport));
        gl->Scissor(params->scissors.x0, params->scissors.y0,
                    FUNC6(params->scissors),
                    FUNC5(params->scissors));
        gl->Enable(GL_SCISSOR_TEST);
        if (pass->params.enable_blend) {
            gl->BlendFuncSeparate(FUNC4(pass->params.blend_src_rgb),
                                  FUNC4(pass->params.blend_dst_rgb),
                                  FUNC4(pass->params.blend_src_alpha),
                                  FUNC4(pass->params.blend_dst_alpha));
            gl->Enable(GL_BLEND);
        }
        FUNC3(&pass_gl->vao, GL_TRIANGLES, params->vertex_data,
                         params->vertex_count);
        gl->Disable(GL_SCISSOR_TEST);
        gl->Disable(GL_BLEND);
        gl->BindFramebuffer(GL_FRAMEBUFFER, 0);
        break;
    }
    case RA_RENDERPASS_TYPE_COMPUTE: {
        gl->DispatchCompute(params->compute_groups[0],
                            params->compute_groups[1],
                            params->compute_groups[2]);

        gl->MemoryBarrier(GL_TEXTURE_FETCH_BARRIER_BIT);
        break;
    }
    default: FUNC0();
    }

    for (int n = 0; n < params->num_values; n++)
        FUNC2(ra, pass, &params->values[n]);
    gl->ActiveTexture(GL_TEXTURE0);

    gl->UseProgram(0);
}