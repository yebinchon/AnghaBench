
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;


 int gs_valid (char*) ;
 int gs_vertex3v (struct vec3*) ;
 int vec3_set (struct vec3*,float,float,float) ;

void gs_vertex3f(float x, float y, float z)
{
 struct vec3 v3;

 if (!gs_valid("gs_vertex3f"))
  return;

 vec3_set(&v3, x, y, z);
 gs_vertex3v(&v3);
}
