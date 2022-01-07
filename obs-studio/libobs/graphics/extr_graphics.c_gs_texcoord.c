
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;


 int gs_texcoord2v (struct vec2*,int) ;
 int gs_valid (char*) ;
 int vec2_set (struct vec2*,float,float) ;

void gs_texcoord(float x, float y, int unit)
{
 struct vec2 v2;

 if (!gs_valid("gs_texcoord"))
  return;

 vec2_set(&v2, x, y);
 gs_texcoord2v(&v2, unit);
}
