
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_zstencil_format { ____Placeholder_gs_zstencil_format } gs_zstencil_format ;
typedef int GLenum ;


 int GL_DEPTH_ATTACHMENT ;
 int GL_DEPTH_STENCIL_ATTACHMENT ;






__attribute__((used)) static inline GLenum get_attachment(enum gs_zstencil_format format)
{
 switch (format) {
 case 132:
  return GL_DEPTH_ATTACHMENT;
 case 131:
  return GL_DEPTH_STENCIL_ATTACHMENT;
 case 130:
  return GL_DEPTH_ATTACHMENT;
 case 129:
  return GL_DEPTH_STENCIL_ATTACHMENT;
 case 128:
  return 0;
 }

 return 0;
}
