
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ra_d3d11 {int fl; } ;
struct ra {struct ra_d3d11* priv; } ;
typedef enum glsl_shader { ____Placeholder_glsl_shader } glsl_shader ;
__attribute__((used)) static const char *get_shader_target(struct ra *ra, enum glsl_shader type)
{
    struct ra_d3d11 *p = ra->priv;
    switch (p->fl) {
    default:
        switch (type) {
        case 128: return "vs_5_0";
        case 129: return "ps_5_0";
        case 130: return "cs_5_0";
        }
        break;
    case 134:
        switch (type) {
        case 128: return "vs_4_1";
        case 129: return "ps_4_1";
        case 130: return "cs_4_1";
        }
        break;
    case 135:
        switch (type) {
        case 128: return "vs_4_0";
        case 129: return "ps_4_0";
        case 130: return "cs_4_0";
        }
        break;
    case 131:
        switch (type) {
        case 128: return "vs_4_0_level_9_3";
        case 129: return "ps_4_0_level_9_3";
        }
        break;
    case 132:
    case 133:
        switch (type) {
        case 128: return "vs_4_0_level_9_1";
        case 129: return "ps_4_0_level_9_1";
        }
        break;
    }
    return ((void*)0);
}
