#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct priv {int /*<<< orphan*/  opts; int /*<<< orphan*/  compiler; } ;
typedef  int /*<<< orphan*/  shaderc_shader_kind ;
typedef  int /*<<< orphan*/  shaderc_compilation_result_t ;
typedef  enum glsl_shader { ____Placeholder_glsl_shader } glsl_shader ;

/* Variables and functions */
#define  GLSL_SHADER_COMPUTE 133 
#define  GLSL_SHADER_FRAGMENT 132 
#define  GLSL_SHADER_VERTEX 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,char*,char*,int /*<<< orphan*/ ) ; 
#define  shaderc_glsl_compute_shader 130 
#define  shaderc_glsl_fragment_shader 129 
#define  shaderc_glsl_vertex_shader 128 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static shaderc_compilation_result_t FUNC3(struct priv *p,
                                            enum glsl_shader type,
                                            const char *glsl, bool debug)
{
    static const shaderc_shader_kind kinds[] = {
        [GLSL_SHADER_VERTEX]   = shaderc_glsl_vertex_shader,
        [GLSL_SHADER_FRAGMENT] = shaderc_glsl_fragment_shader,
        [GLSL_SHADER_COMPUTE]  = shaderc_glsl_compute_shader,
    };

    if (debug) {
        return FUNC1(p->compiler, glsl, FUNC2(glsl),
                                        kinds[type], "input", "main", p->opts);
    } else {
        return FUNC0(p->compiler, glsl, FUNC2(glsl),
                                        kinds[type], "input", "main", p->opts);
    }
}