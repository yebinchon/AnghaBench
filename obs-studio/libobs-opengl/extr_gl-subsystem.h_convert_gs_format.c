
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
typedef int GLenum ;


 int GL_BGRA ;
 int GL_RED ;
 int GL_RG ;
 int GL_RGB ;
 int GL_RGBA ;
__attribute__((used)) static inline GLenum convert_gs_format(enum gs_color_format format)
{
 switch (format) {
 case 146:
  return GL_RED;
 case 136:
  return GL_RED;
 case 132:
  return GL_RGBA;
 case 144:
  return GL_BGRA;
 case 145:
  return GL_BGRA;
 case 140:
  return GL_RGBA;
 case 131:
  return GL_RGBA;
 case 139:
  return GL_RED;
 case 130:
  return GL_RGBA;
 case 129:
  return GL_RGBA;
 case 134:
  return GL_RG;
 case 133:
  return GL_RG;
 case 135:
  return GL_RG;
 case 138:
  return GL_RED;
 case 137:
  return GL_RED;
 case 143:
  return GL_RGB;
 case 142:
  return GL_RGBA;
 case 141:
  return GL_RGBA;
 case 128:
  return 0;
 }

 return 0;
}
