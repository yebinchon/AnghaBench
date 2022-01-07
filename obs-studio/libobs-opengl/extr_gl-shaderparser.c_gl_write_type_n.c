
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_parser {int gl_string; } ;


 scalar_t__ cmp_type (char const*,size_t,char*,int) ;
 int dstr_cat (int *,char*) ;

__attribute__((used)) static bool gl_write_type_n(struct gl_shader_parser *glsp, const char *type,
       size_t len)
{
 if (cmp_type(type, len, "float2", 6) == 0)
  dstr_cat(&glsp->gl_string, "vec2");
 else if (cmp_type(type, len, "float3", 6) == 0)
  dstr_cat(&glsp->gl_string, "vec3");
 else if (cmp_type(type, len, "float4", 6) == 0)
  dstr_cat(&glsp->gl_string, "vec4");
 else if (cmp_type(type, len, "int2", 4) == 0)
  dstr_cat(&glsp->gl_string, "ivec2");
 else if (cmp_type(type, len, "int3", 4) == 0)
  dstr_cat(&glsp->gl_string, "ivec3");
 else if (cmp_type(type, len, "int4", 4) == 0)
  dstr_cat(&glsp->gl_string, "ivec4");
 else if (cmp_type(type, len, "float3x3", 8) == 0)
  dstr_cat(&glsp->gl_string, "mat3x3");
 else if (cmp_type(type, len, "float3x4", 8) == 0)
  dstr_cat(&glsp->gl_string, "mat3x4");
 else if (cmp_type(type, len, "float4x4", 8) == 0)
  dstr_cat(&glsp->gl_string, "mat4x4");
 else if (cmp_type(type, len, "texture2d", 9) == 0)
  dstr_cat(&glsp->gl_string, "sampler2D");
 else if (cmp_type(type, len, "texture3d", 9) == 0)
  dstr_cat(&glsp->gl_string, "sampler3D");
 else if (cmp_type(type, len, "texture_cube", 12) == 0)
  dstr_cat(&glsp->gl_string, "samplerCube");
 else if (cmp_type(type, len, "texture_rect", 12) == 0)
  dstr_cat(&glsp->gl_string, "sampler2DRect");
 else
  return 0;

 return 1;
}
