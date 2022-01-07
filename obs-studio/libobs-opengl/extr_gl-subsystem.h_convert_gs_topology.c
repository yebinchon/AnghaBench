
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_draw_mode { ____Placeholder_gs_draw_mode } gs_draw_mode ;
typedef int GLenum ;


 int GL_LINES ;
 int GL_LINE_STRIP ;
 int GL_POINTS ;
 int GL_TRIANGLES ;
 int GL_TRIANGLE_STRIP ;






__attribute__((used)) static inline GLenum convert_gs_topology(enum gs_draw_mode mode)
{
 switch (mode) {
 case 130:
  return GL_POINTS;
 case 132:
  return GL_LINES;
 case 131:
  return GL_LINE_STRIP;
 case 129:
  return GL_TRIANGLES;
 case 128:
  return GL_TRIANGLE_STRIP;
 }

 return GL_POINTS;
}
