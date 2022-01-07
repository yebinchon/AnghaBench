
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;


 int gs_normal3v (struct vec3*) ;
 int gs_valid (char*) ;
 int vec3_set (struct vec3*,float,float,float) ;

void gs_normal3f(float x, float y, float z)
{
 struct vec3 v3;

 if (!gs_valid("gs_normal3f"))
  return;

 vec3_set(&v3, x, y, z);
 gs_normal3v(&v3);
}
