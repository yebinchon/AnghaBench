
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_stencil_op_type { ____Placeholder_gs_stencil_op_type } gs_stencil_op_type ;
typedef int GLenum ;


 int GL_DECR ;
 int GL_INCR ;
 int GL_INVERT ;
 int GL_KEEP ;
 int GL_REPLACE ;
 int GL_ZERO ;







__attribute__((used)) static inline GLenum convert_gs_stencil_op(enum gs_stencil_op_type op)
{
 switch (op) {
 case 130:
  return GL_KEEP;
 case 128:
  return GL_ZERO;
 case 129:
  return GL_REPLACE;
 case 132:
  return GL_INCR;
 case 133:
  return GL_DECR;
 case 131:
  return GL_INVERT;
 }

 return GL_KEEP;
}
