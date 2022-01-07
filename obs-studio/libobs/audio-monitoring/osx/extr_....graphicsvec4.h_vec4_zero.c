
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vec4 {int m; } ;


 int _mm_setzero_ps () ;

__attribute__((used)) static inline void vec4_zero(struct vec4 *v)
{
 v->m = _mm_setzero_ps();
}
