
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
typedef int GLenum ;


 int GL_FLOAT ;
 int GL_UNSIGNED_BYTE ;
 int GL_UNSIGNED_INT_10_10_10_2 ;
 int GL_UNSIGNED_SHORT ;
__attribute__((used)) static inline GLenum get_gl_format_type(enum gs_color_format format)
{
 switch (format) {
 case 146:
  return GL_UNSIGNED_BYTE;
 case 136:
  return GL_UNSIGNED_BYTE;
 case 132:
  return GL_UNSIGNED_BYTE;
 case 144:
  return GL_UNSIGNED_BYTE;
 case 145:
  return GL_UNSIGNED_BYTE;
 case 140:
  return GL_UNSIGNED_INT_10_10_10_2;
 case 131:
  return GL_UNSIGNED_SHORT;
 case 139:
  return GL_UNSIGNED_SHORT;
 case 130:
  return GL_UNSIGNED_SHORT;
 case 129:
  return GL_FLOAT;
 case 134:
  return GL_UNSIGNED_SHORT;
 case 133:
  return GL_FLOAT;
 case 135:
  return GL_UNSIGNED_BYTE;
 case 138:
  return GL_UNSIGNED_SHORT;
 case 137:
  return GL_FLOAT;
 case 143:
  return GL_UNSIGNED_BYTE;
 case 142:
  return GL_UNSIGNED_BYTE;
 case 141:
  return GL_UNSIGNED_BYTE;
 case 128:
  return 0;
 }

 return GL_UNSIGNED_BYTE;
}
