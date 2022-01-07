
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ra_tex* tex; } ;
struct TYPE_3__ {int type; int binding; } ;
struct sc_uniform {char* glsl_type; TYPE_2__ v; TYPE_1__ input; } ;
struct ra_tex {int dummy; } ;
struct gl_shader_cache {int dummy; } ;


 int RA_VARTYPE_IMG_W ;
 struct sc_uniform* find_uniform (struct gl_shader_cache*,char const*) ;
 int gl_sc_enable_extension (struct gl_shader_cache*,char*) ;
 int gl_sc_next_binding (struct gl_shader_cache*,int ) ;

void gl_sc_uniform_image2D_wo(struct gl_shader_cache *sc, const char *name,
                              struct ra_tex *tex)
{
    gl_sc_enable_extension(sc, "GL_ARB_shader_image_load_store");

    struct sc_uniform *u = find_uniform(sc, name);
    u->input.type = RA_VARTYPE_IMG_W;
    u->glsl_type = "writeonly image2D";
    u->input.binding = gl_sc_next_binding(sc, u->input.type);
    u->v.tex = tex;
}
