
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_renderpass_params {scalar_t__ type; int num_vertex_attribs; TYPE_1__* vertex_attribs; int frag_shader; int vertex_shader; int compute_shader; } ;
struct ra {int dummy; } ;
struct TYPE_5__ {int (* DeleteProgram ) (scalar_t__) ;int (* BindAttribLocation ) (scalar_t__,int,int ) ;scalar_t__ (* CreateProgram ) () ;} ;
struct TYPE_4__ {int name; } ;
typedef scalar_t__ GLuint ;
typedef TYPE_2__ GL ;


 int GL_COMPUTE_SHADER ;
 int GL_FRAGMENT_SHADER ;
 int GL_VERTEX_SHADER ;
 scalar_t__ RA_RENDERPASS_TYPE_COMPUTE ;
 scalar_t__ RA_RENDERPASS_TYPE_RASTER ;
 int compile_attach_shader (struct ra*,scalar_t__,int ,int ,int*) ;
 int link_shader (struct ra*,scalar_t__,int*) ;
 TYPE_2__* ra_gl_get (struct ra*) ;
 scalar_t__ stub1 () ;
 int stub2 (scalar_t__,int,int ) ;
 int stub3 (scalar_t__) ;

__attribute__((used)) static GLuint compile_program(struct ra *ra, const struct ra_renderpass_params *p)
{
    GL *gl = ra_gl_get(ra);

    GLuint prog = gl->CreateProgram();
    bool ok = 1;
    if (p->type == RA_RENDERPASS_TYPE_COMPUTE)
        compile_attach_shader(ra, prog, GL_COMPUTE_SHADER, p->compute_shader, &ok);
    if (p->type == RA_RENDERPASS_TYPE_RASTER) {
        compile_attach_shader(ra, prog, GL_VERTEX_SHADER, p->vertex_shader, &ok);
        compile_attach_shader(ra, prog, GL_FRAGMENT_SHADER, p->frag_shader, &ok);
        for (int n = 0; n < p->num_vertex_attribs; n++)
            gl->BindAttribLocation(prog, n, p->vertex_attribs[n].name);
    }
    link_shader(ra, prog, &ok);
    if (!ok) {
        gl->DeleteProgram(prog);
        prog = 0;
    }
    return prog;
}
