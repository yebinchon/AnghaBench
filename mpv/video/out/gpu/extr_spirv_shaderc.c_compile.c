
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int opts; int compiler; } ;
typedef int shaderc_shader_kind ;
typedef int shaderc_compilation_result_t ;
typedef enum glsl_shader { ____Placeholder_glsl_shader } glsl_shader ;





 int shaderc_compile_into_spv (int ,char const*,int ,int const,char*,char*,int ) ;
 int shaderc_compile_into_spv_assembly (int ,char const*,int ,int const,char*,char*,int ) ;



 int strlen (char const*) ;

__attribute__((used)) static shaderc_compilation_result_t compile(struct priv *p,
                                            enum glsl_shader type,
                                            const char *glsl, bool debug)
{
    static const shaderc_shader_kind kinds[] = {
        [131] = 128,
        [132] = 129,
        [133] = 130,
    };

    if (debug) {
        return shaderc_compile_into_spv_assembly(p->compiler, glsl, strlen(glsl),
                                        kinds[type], "input", "main", p->opts);
    } else {
        return shaderc_compile_into_spv(p->compiler, glsl, strlen(glsl),
                                        kinds[type], "input", "main", p->opts);
    }
}
