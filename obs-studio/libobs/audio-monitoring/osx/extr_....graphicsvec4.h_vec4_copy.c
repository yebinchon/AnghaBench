
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;



__attribute__((used)) static inline void vec4_copy(struct vec4 *dst, const struct vec4 *v)
{
 dst->m = v->m;
}
