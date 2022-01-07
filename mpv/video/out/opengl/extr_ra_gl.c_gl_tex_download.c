
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_tex_gl {int type; int format; int fbo; } ;
struct ra_tex_download_params {int stride; int dst; struct ra_tex* tex; } ;
struct TYPE_2__ {int h; int w; } ;
struct ra_tex {TYPE_1__ params; struct ra_tex_gl* priv; } ;
struct ra {int dummy; } ;
typedef int GL ;


 int gl_read_fbo_contents (int *,int ,int,int ,int ,int ,int ,int ,int ) ;
 int * ra_gl_get (struct ra*) ;

__attribute__((used)) static bool gl_tex_download(struct ra *ra, struct ra_tex_download_params *params)
{
    GL *gl = ra_gl_get(ra);
    struct ra_tex *tex = params->tex;
    struct ra_tex_gl *tex_gl = tex->priv;
    if (!tex_gl->fbo)
        return 0;
    return gl_read_fbo_contents(gl, tex_gl->fbo, 1, tex_gl->format, tex_gl->type,
                                tex->params.w, tex->params.h, params->dst,
                                params->stride);
}
