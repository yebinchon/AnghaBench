
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ D3DVECTOR ;


 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline D3DVECTOR VectorBetweenTwoPoints (const D3DVECTOR *a, const D3DVECTOR *b)
{
 D3DVECTOR c;
 c.x = b->x - a->x;
 c.y = b->y - a->y;
 c.z = b->z - a->z;
 TRACE("A (%f,%f,%f), B (%f,%f,%f), AB = (%f,%f,%f)\n", a->x, a->y, a->z, b->x, b->y,
       b->z, c.x, c.y, c.z);
 return c;
}
