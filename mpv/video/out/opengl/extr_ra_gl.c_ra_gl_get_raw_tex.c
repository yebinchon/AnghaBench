
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_tex_gl {int target; int texture; } ;
struct ra_tex {struct ra_tex_gl* priv; } ;
struct ra {int dummy; } ;
typedef int GLuint ;
typedef int GLenum ;



void ra_gl_get_raw_tex(struct ra *ra, struct ra_tex *tex,
                       GLuint *out_texture, GLenum *out_target)
{
    struct ra_tex_gl *tex_gl = tex->priv;
    *out_texture = tex_gl->texture;
    *out_target = tex_gl->target;
}
