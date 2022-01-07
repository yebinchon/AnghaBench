
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {float w; void* z; void* y; void* x; } ;


 void* rand_float (int) ;

void vec3_rand(struct vec3 *dst, int positive_only)
{
 dst->x = rand_float(positive_only);
 dst->y = rand_float(positive_only);
 dst->z = rand_float(positive_only);
 dst->w = 0.0f;
}
