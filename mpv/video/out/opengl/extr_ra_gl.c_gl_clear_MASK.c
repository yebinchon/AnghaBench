#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ra_tex_gl {int /*<<< orphan*/  fbo; } ;
struct TYPE_4__ {int /*<<< orphan*/  render_dst; } ;
struct ra_tex {struct ra_tex_gl* priv; TYPE_1__ params; } ;
struct ra {int dummy; } ;
struct mp_rect {scalar_t__ y0; scalar_t__ y1; scalar_t__ x0; scalar_t__ x1; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* BindFramebuffer ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Disable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Clear ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ClearColor ) (float,float,float,float) ;int /*<<< orphan*/  (* Enable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Scissor ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;} ;
typedef  TYPE_2__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct ra*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ra *ra, struct ra_tex *dst, float color[4],
                     struct mp_rect *scissor)
{
    GL *gl = FUNC1(ra);

    FUNC0(dst->params.render_dst);
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