
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_renderpass_input {int dim_v; } ;


 int abort () ;

__attribute__((used)) static const char *vao_glsl_type(const struct ra_renderpass_input *e)
{

    switch (e->dim_v) {
    case 1: return "float";
    case 2: return "vec2";
    case 3: return "vec3";
    case 4: return "vec4";
    default: abort();
    }
}
