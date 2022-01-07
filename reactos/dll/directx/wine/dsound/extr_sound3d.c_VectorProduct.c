
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; int z; } ;
typedef TYPE_1__ D3DVECTOR ;


 int TRACE (char*,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static inline D3DVECTOR VectorProduct (const D3DVECTOR *a, const D3DVECTOR *b)
{
 D3DVECTOR c;
 c.x = (a->y*b->z) - (a->z*b->y);
 c.y = (a->z*b->x) - (a->x*b->z);
 c.z = (a->x*b->y) - (a->y*b->x);
 TRACE("(%f,%f,%f) x (%f,%f,%f) = (%f,%f,%f)\n", a->x, a->y, a->z, b->x, b->y,
       b->z, c.x, c.y, c.z);
 return c;
}
