
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;
typedef int GLenum ;


 int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT ;
 int GL_COMPRESSED_RGBA_S3TC_DXT3_EXT ;
 int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT ;
 int GL_R16 ;
 int GL_R16F ;
 int GL_R32F ;
 int GL_R8 ;
 int GL_RG16F ;
 int GL_RG32F ;
 int GL_RG8 ;
 int GL_RGB ;
 int GL_RGB10_A2 ;
 int GL_RGBA ;
 int GL_RGBA16 ;
 int GL_RGBA16F ;
 int GL_RGBA32F ;
__attribute__((used)) static inline GLenum convert_gs_internal_format(enum gs_color_format format)
{
 switch (format) {
 case 146:
  return GL_R8;
 case 136:
  return GL_R8;
 case 132:
  return GL_RGBA;
 case 144:
  return GL_RGB;
 case 145:
  return GL_RGBA;
 case 140:
  return GL_RGB10_A2;
 case 131:
  return GL_RGBA16;
 case 139:
  return GL_R16;
 case 130:
  return GL_RGBA16F;
 case 129:
  return GL_RGBA32F;
 case 134:
  return GL_RG16F;
 case 133:
  return GL_RG32F;
 case 135:
  return GL_RG8;
 case 138:
  return GL_R16F;
 case 137:
  return GL_R32F;
 case 143:
  return GL_COMPRESSED_RGBA_S3TC_DXT1_EXT;
 case 142:
  return GL_COMPRESSED_RGBA_S3TC_DXT3_EXT;
 case 141:
  return GL_COMPRESSED_RGBA_S3TC_DXT5_EXT;
 case 128:
  return 0;
 }

 return 0;
}
