
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {float* f; } ;
struct TYPE_3__ {int type; } ;
struct sc_uniform {char* glsl_type; TYPE_2__ v; TYPE_1__ input; } ;
struct gl_shader_cache {int dummy; } ;


 int RA_VARTYPE_FLOAT ;
 struct sc_uniform* find_uniform (struct gl_shader_cache*,char*) ;
 int update_uniform_params (struct gl_shader_cache*,struct sc_uniform*) ;

void gl_sc_uniform_f(struct gl_shader_cache *sc, char *name, float f)
{
    struct sc_uniform *u = find_uniform(sc, name);
    u->input.type = RA_VARTYPE_FLOAT;
    u->glsl_type = "float";
    update_uniform_params(sc, u);
    u->v.f[0] = f;
}
