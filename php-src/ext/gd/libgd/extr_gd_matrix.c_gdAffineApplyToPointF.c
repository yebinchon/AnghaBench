
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* gdPointFPtr ;
struct TYPE_4__ {double x; double y; } ;


 int GD_TRUE ;

int gdAffineApplyToPointF (gdPointFPtr dst, const gdPointFPtr src,
    const double affine[6])
{
 double x = src->x;
 double y = src->y;
 x = src->x;
 y = src->y;
 dst->x = x * affine[0] + y * affine[2] + affine[4];
 dst->y = x * affine[1] + y * affine[3] + affine[5];
 return GD_TRUE;
}
