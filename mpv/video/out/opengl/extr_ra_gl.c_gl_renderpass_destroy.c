
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_renderpass_gl {int vao; int program; struct ra_renderpass_gl* priv; } ;
struct ra_renderpass {int vao; int program; struct ra_renderpass* priv; } ;
struct ra {int dummy; } ;
struct TYPE_3__ {int (* DeleteProgram ) (int ) ;} ;
typedef TYPE_1__ GL ;


 int gl_vao_uninit (int *) ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 int stub1 (int ) ;
 int talloc_free (struct ra_renderpass_gl*) ;

__attribute__((used)) static void gl_renderpass_destroy(struct ra *ra, struct ra_renderpass *pass)
{
    GL *gl = ra_gl_get(ra);
    struct ra_renderpass_gl *pass_gl = pass->priv;
    gl->DeleteProgram(pass_gl->program);
    gl_vao_uninit(&pass_gl->vao);

    talloc_free(pass_gl);
    talloc_free(pass);
}
