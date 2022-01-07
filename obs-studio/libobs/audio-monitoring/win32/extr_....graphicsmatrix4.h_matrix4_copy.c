
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m; } ;
struct TYPE_8__ {int m; } ;
struct TYPE_7__ {int m; } ;
struct TYPE_6__ {int m; } ;
struct matrix4 {TYPE_1__ t; TYPE_4__ z; TYPE_3__ y; TYPE_2__ x; } ;



__attribute__((used)) static inline void matrix4_copy(struct matrix4 *dst, const struct matrix4 *m)
{
 dst->x.m = m->x.m;
 dst->y.m = m->y.m;
 dst->z.m = m->z.m;
 dst->t.m = m->t.m;
}
