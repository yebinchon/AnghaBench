
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int z; } ;
typedef TYPE_1__ D3DVECTOR ;
typedef int D3DVALUE ;


 int TRACE (char*,int,int,int,int,int,int,int) ;

__attribute__((used)) static inline D3DVALUE ScalarProduct (const D3DVECTOR *a, const D3DVECTOR *b)
{
 D3DVALUE c;
 c = (a->x*b->x) + (a->y*b->y) + (a->z*b->z);
 TRACE("(%f,%f,%f) * (%f,%f,%f) = %f)\n", a->x, a->y, a->z, b->x, b->y,
       b->z, c);
 return c;
}
