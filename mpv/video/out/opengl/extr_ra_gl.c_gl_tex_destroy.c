
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ra_tex_gl {int texture; scalar_t__ fbo; scalar_t__ own_objects; int pbo; struct ra_tex_gl* priv; } ;
struct ra_tex {int texture; scalar_t__ fbo; scalar_t__ own_objects; int pbo; struct ra_tex* priv; } ;
struct ra {int dummy; } ;
struct TYPE_3__ {int (* DeleteTextures ) (int,int *) ;int (* DeleteFramebuffers ) (int,scalar_t__*) ;} ;
typedef TYPE_1__ GL ;


 int ra_buf_pool_uninit (struct ra*,int *) ;
 TYPE_1__* ra_gl_get (struct ra*) ;
 int stub1 (int,scalar_t__*) ;
 int stub2 (int,int *) ;
 int talloc_free (struct ra_tex_gl*) ;

__attribute__((used)) static void gl_tex_destroy(struct ra *ra, struct ra_tex *tex)
{
    GL *gl = ra_gl_get(ra);
    struct ra_tex_gl *tex_gl = tex->priv;

    ra_buf_pool_uninit(ra, &tex_gl->pbo);

    if (tex_gl->own_objects) {
        if (tex_gl->fbo)
            gl->DeleteFramebuffers(1, &tex_gl->fbo);

        gl->DeleteTextures(1, &tex_gl->texture);
    }
    talloc_free(tex_gl);
    talloc_free(tex);
}
