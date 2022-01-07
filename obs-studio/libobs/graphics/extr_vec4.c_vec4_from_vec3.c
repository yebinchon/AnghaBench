
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {float w; int m; } ;
struct vec3 {int m; } ;



void vec4_from_vec3(struct vec4 *dst, const struct vec3 *v)
{
 dst->m = v->m;
 dst->w = 1.0f;
}
