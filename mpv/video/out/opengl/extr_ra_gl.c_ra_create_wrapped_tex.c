
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex_params {int dummy; } ;
struct ra_tex_gl {int texture; } ;
struct ra_tex {struct ra_tex_gl* priv; } ;
struct ra {int dummy; } ;
typedef int GLuint ;


 struct ra_tex* gl_tex_create_blank (struct ra*,struct ra_tex_params const*) ;

struct ra_tex *ra_create_wrapped_tex(struct ra *ra,
                                     const struct ra_tex_params *params,
                                     GLuint gl_texture)
{
    struct ra_tex *tex = gl_tex_create_blank(ra, params);
    if (!tex)
        return ((void*)0);
    struct ra_tex_gl *tex_gl = tex->priv;
    tex_gl->texture = gl_texture;
    return tex;
}
