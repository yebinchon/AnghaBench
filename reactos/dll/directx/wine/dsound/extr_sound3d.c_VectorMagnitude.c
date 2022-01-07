
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z; int y; int x; } ;
typedef TYPE_1__ D3DVECTOR ;
typedef int D3DVALUE ;


 int ScalarProduct (TYPE_1__ const*,TYPE_1__ const*) ;
 int TRACE (char*,int ,int ,int ,int ) ;
 int sqrt (int ) ;

__attribute__((used)) static inline D3DVALUE VectorMagnitude (const D3DVECTOR *a)
{
 D3DVALUE l;
 l = sqrt (ScalarProduct (a, a));
 TRACE("|(%f,%f,%f)| = %f\n", a->x, a->y, a->z, l);
 return l;
}
