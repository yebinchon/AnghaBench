
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;


 size_t ARB_SHADING_LANGUAGE_420PACK ;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static void shader_glsl_fixup_scalar_register_variable(char *register_name,
        const char *glsl_variable, const struct wined3d_gl_info *gl_info)
{


    if (gl_info->supported[ARB_SHADING_LANGUAGE_420PACK])
        sprintf(register_name, "%s", glsl_variable);
    else
        sprintf(register_name, "ivec2(%s, 0)", glsl_variable);
}
