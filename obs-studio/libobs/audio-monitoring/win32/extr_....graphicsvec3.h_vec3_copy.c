
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int m; } ;



__attribute__((used)) static inline void vec3_copy(struct vec3 *dst, const struct vec3 *v)
{
 dst->m = v->m;
}
