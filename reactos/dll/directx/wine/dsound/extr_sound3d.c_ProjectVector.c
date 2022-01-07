
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int z; int y; int x; } ;
typedef TYPE_1__ D3DVECTOR ;
typedef int D3DVALUE ;


 int ScalarProduct (TYPE_1__ const*,TYPE_1__ const*) ;
 int TRACE (char*,int ,int ,int ,int ,int ,int ,int) ;
 int VectorMagnitude (TYPE_1__ const*) ;

__attribute__((used)) static inline D3DVALUE ProjectVector (const D3DVECTOR *a, const D3DVECTOR *p)
{
 D3DVALUE prod, result;
 prod = ScalarProduct(a, p);
 result = prod/VectorMagnitude(p);
 TRACE("length projection of (%f,%f,%f) on (%f,%f,%f) = %f\n", a->x, a->y, a->z, p->x,
              p->y, p->z, result);
 return result;
}
