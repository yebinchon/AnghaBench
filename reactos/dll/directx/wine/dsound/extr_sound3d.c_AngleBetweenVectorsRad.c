
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z; int y; int x; } ;
typedef TYPE_1__ D3DVECTOR ;
typedef int D3DVALUE ;


 int RadToDeg (int) ;
 int ScalarProduct (TYPE_1__ const*,TYPE_1__ const*) ;
 int TRACE (char*,int ,int ,int ,int ,int ,int ,int,int ) ;
 int VectorMagnitude (TYPE_1__ const*) ;
 int acos (int) ;

__attribute__((used)) static inline D3DVALUE AngleBetweenVectorsRad (const D3DVECTOR *a, const D3DVECTOR *b)
{
 D3DVALUE la, lb, product, angle, cos;

 product = ScalarProduct (a,b);
 la = VectorMagnitude (a);
 lb = VectorMagnitude (b);
 if (!la || !lb)
  return 0;

 cos = product/(la*lb);
 angle = acos(cos);
 TRACE("angle between (%f,%f,%f) and (%f,%f,%f) = %f radians (%f degrees)\n", a->x, a->y, a->z, b->x,
       b->y, b->z, angle, RadToDeg(angle));
 return angle;
}
