
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;
struct vec3 {float w; int m; } ;



void vec3_from_vec4(struct vec3 *dst, const struct vec4 *v)
{
 dst->m = v->m;
 dst->w = 0.0f;
}
