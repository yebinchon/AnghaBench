
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef int GLenum ;


 int GL_BACK ;
 int GL_FRONT ;
 int GL_FRONT_AND_BACK ;




__attribute__((used)) static inline GLenum convert_gs_stencil_side(enum gs_stencil_side side)
{
 switch (side) {
 case 128:
  return GL_FRONT;
 case 130:
  return GL_BACK;
 case 129:
  return GL_FRONT_AND_BACK;
 }

 return GL_FRONT;
}
