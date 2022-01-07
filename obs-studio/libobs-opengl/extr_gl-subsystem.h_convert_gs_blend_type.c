
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;
typedef int GLenum ;


 int GL_DST_ALPHA ;
 int GL_DST_COLOR ;
 int GL_ONE ;
 int GL_ONE_MINUS_DST_ALPHA ;
 int GL_ONE_MINUS_DST_COLOR ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_ONE_MINUS_SRC_COLOR ;
 int GL_SRC_ALPHA ;
 int GL_SRC_ALPHA_SATURATE ;
 int GL_SRC_COLOR ;
 int GL_ZERO ;
__attribute__((used)) static inline GLenum convert_gs_blend_type(enum gs_blend_type type)
{
 switch (type) {
 case 128:
  return GL_ZERO;
 case 132:
  return GL_ONE;
 case 129:
  return GL_SRC_COLOR;
 case 133:
  return GL_ONE_MINUS_SRC_COLOR;
 case 131:
  return GL_SRC_ALPHA;
 case 134:
  return GL_ONE_MINUS_SRC_ALPHA;
 case 137:
  return GL_DST_COLOR;
 case 135:
  return GL_ONE_MINUS_DST_COLOR;
 case 138:
  return GL_DST_ALPHA;
 case 136:
  return GL_ONE_MINUS_DST_ALPHA;
 case 130:
  return GL_SRC_ALPHA_SATURATE;
 }

 return GL_ONE;
}
