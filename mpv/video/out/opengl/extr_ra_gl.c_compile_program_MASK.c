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
struct ra_renderpass_params {scalar_t__ type; int num_vertex_attribs; TYPE_1__* vertex_attribs; int /*<<< orphan*/  frag_shader; int /*<<< orphan*/  vertex_shader; int /*<<< orphan*/  compute_shader; } ;
struct ra {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* DeleteProgram ) (scalar_t__) ;int /*<<< orphan*/  (* BindAttribLocation ) (scalar_t__,int,int /*<<< orphan*/ ) ;scalar_t__ (* CreateProgram ) () ;} ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ GLuint ;
typedef  TYPE_2__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPUTE_SHADER ; 
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 scalar_t__ RA_RENDERPASS_TYPE_COMPUTE ; 
 scalar_t__ RA_RENDERPASS_TYPE_RASTER ; 
 int /*<<< orphan*/  FUNC0 (struct ra*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra*,scalar_t__,int*) ; 
 TYPE_2__* FUNC2 (struct ra*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static GLuint FUNC6(struct ra *ra, const struct ra_renderpass_params *p)
{
    GL *gl = FUNC2(ra);

    GLuint prog = gl->CreateProgram();
    bool ok = true;
    if (p->type == RA_RENDERPASS_TYPE_COMPUTE)
        FUNC0(ra, prog, GL_COMPUTE_SHADER, p->compute_shader, &ok);
    if (p->type == RA_RENDERPASS_TYPE_RASTER) {
        FUNC0(ra, prog, GL_VERTEX_SHADER, p->vertex_shader, &ok);
        FUNC0(ra, prog, GL_FRAGMENT_SHADER, p->frag_shader, &ok);
        for (int n = 0; n < p->num_vertex_attribs; n++)
            gl->BindAttribLocation(prog, n, p->vertex_attribs[n].name);
    }
    FUNC1(ra, prog, &ok);
    if (!ok) {
        gl->DeleteProgram(prog);
        prog = 0;
    }
    return prog;
}