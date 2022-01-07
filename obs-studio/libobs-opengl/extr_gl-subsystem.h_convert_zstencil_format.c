
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_zstencil_format { ____Placeholder_gs_zstencil_format } gs_zstencil_format ;
typedef int GLenum ;


 int GL_DEPTH24_STENCIL8 ;
 int GL_DEPTH32F_STENCIL8 ;
 int GL_DEPTH_COMPONENT16 ;
 int GL_DEPTH_COMPONENT32F ;






__attribute__((used)) static inline GLenum convert_zstencil_format(enum gs_zstencil_format format)
{
 switch (format) {
 case 132:
  return GL_DEPTH_COMPONENT16;
 case 131:
  return GL_DEPTH24_STENCIL8;
 case 130:
  return GL_DEPTH_COMPONENT32F;
 case 129:
  return GL_DEPTH32F_STENCIL8;
 case 128:
  return 0;
 }

 return 0;
}
