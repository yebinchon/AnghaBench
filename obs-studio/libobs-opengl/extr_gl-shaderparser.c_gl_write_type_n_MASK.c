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
struct gl_shader_parser {int /*<<< orphan*/  gl_string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC2(struct gl_shader_parser *glsp, const char *type,
			    size_t len)
{
	if (FUNC0(type, len, "float2", 6) == 0)
		FUNC1(&glsp->gl_string, "vec2");
	else if (FUNC0(type, len, "float3", 6) == 0)
		FUNC1(&glsp->gl_string, "vec3");
	else if (FUNC0(type, len, "float4", 6) == 0)
		FUNC1(&glsp->gl_string, "vec4");
	else if (FUNC0(type, len, "int2", 4) == 0)
		FUNC1(&glsp->gl_string, "ivec2");
	else if (FUNC0(type, len, "int3", 4) == 0)
		FUNC1(&glsp->gl_string, "ivec3");
	else if (FUNC0(type, len, "int4", 4) == 0)
		FUNC1(&glsp->gl_string, "ivec4");
	else if (FUNC0(type, len, "float3x3", 8) == 0)
		FUNC1(&glsp->gl_string, "mat3x3");
	else if (FUNC0(type, len, "float3x4", 8) == 0)
		FUNC1(&glsp->gl_string, "mat3x4");
	else if (FUNC0(type, len, "float4x4", 8) == 0)
		FUNC1(&glsp->gl_string, "mat4x4");
	else if (FUNC0(type, len, "texture2d", 9) == 0)
		FUNC1(&glsp->gl_string, "sampler2D");
	else if (FUNC0(type, len, "texture3d", 9) == 0)
		FUNC1(&glsp->gl_string, "sampler3D");
	else if (FUNC0(type, len, "texture_cube", 12) == 0)
		FUNC1(&glsp->gl_string, "samplerCube");
	else if (FUNC0(type, len, "texture_rect", 12) == 0)
		FUNC1(&glsp->gl_string, "sampler2DRect");
	else
		return false;

	return true;
}