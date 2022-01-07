
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec3 {int m; } ;


 int _mm_setzero_ps () ;

__attribute__((used)) static inline void vec3_zero(struct vec3 *v)
{
 v->m = _mm_setzero_ps();
}
