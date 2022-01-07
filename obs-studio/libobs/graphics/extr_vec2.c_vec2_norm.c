
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec2 {int dummy; } ;


 float vec2_len (struct vec2 const*) ;
 int vec2_mulf (struct vec2*,struct vec2 const*,float) ;

void vec2_norm(struct vec2 *dst, const struct vec2 *v)
{
 float len = vec2_len(v);

 if (len > 0.0f) {
  len = 1.0f / len;
  vec2_mulf(dst, v, len);
 }
}
