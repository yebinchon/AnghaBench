
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int dummy; } ;
struct vec2 {int y; int x; } ;


 int gs_valid (char*) ;
 int gs_vertex3v (struct vec3*) ;
 int vec3_set (struct vec3*,int ,int ,float) ;

void gs_vertex2v(const struct vec2 *v)
{
 struct vec3 v3;

 if (!gs_valid("gs_vertex2v"))
  return;

 vec3_set(&v3, v->x, v->y, 0.0f);
 gs_vertex3v(&v3);
}
