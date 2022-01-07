
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;
typedef int GLenum ;


 int GL_FRAGMENT_SHADER ;
 int GL_VERTEX_SHADER ;



__attribute__((used)) static inline GLenum convert_shader_type(enum gs_shader_type type)
{
 switch (type) {
 case 128:
  return GL_VERTEX_SHADER;
 case 129:
  return GL_FRAGMENT_SHADER;
 }

 return GL_VERTEX_SHADER;
}
