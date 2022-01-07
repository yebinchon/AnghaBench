
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {void* m; int w; int z; int y; int x; } ;
struct TYPE_7__ {void* m; int w; int z; int y; int x; } ;
struct TYPE_6__ {void* m; int w; int z; int y; int x; } ;
struct TYPE_5__ {void* m; int w; int z; int y; int x; } ;
typedef struct matrix4 {TYPE_4__ t; TYPE_3__ z; TYPE_2__ y; TYPE_1__ x; } const matrix4 ;
typedef void* __m128 ;


 void* _mm_unpackhi_ps (void*,void*) ;
 void* _mm_unpacklo_ps (void*,void*) ;

void matrix4_transpose(struct matrix4 *dst, const struct matrix4 *m)
{
 if (dst == m) {
  struct matrix4 temp = *m;
  matrix4_transpose(dst, &temp);
  return;
 }
 __m128 a0 = _mm_unpacklo_ps(m->x.m, m->z.m);
 __m128 a1 = _mm_unpacklo_ps(m->y.m, m->t.m);
 __m128 a2 = _mm_unpackhi_ps(m->x.m, m->z.m);
 __m128 a3 = _mm_unpackhi_ps(m->y.m, m->t.m);

 dst->x.m = _mm_unpacklo_ps(a0, a1);
 dst->y.m = _mm_unpackhi_ps(a0, a1);
 dst->z.m = _mm_unpacklo_ps(a2, a3);
 dst->t.m = _mm_unpackhi_ps(a2, a3);

}
