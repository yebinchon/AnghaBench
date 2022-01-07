
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_7__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_6__ {scalar_t__ x; scalar_t__ y; } ;
struct TYPE_8__ {TYPE_2__ high; TYPE_1__ low; } ;
typedef TYPE_3__ BOX ;



__attribute__((used)) static uint8
getQuadrant(BOX *centroid, BOX *inBox)
{
 uint8 quadrant = 0;

 if (inBox->low.x > centroid->low.x)
  quadrant |= 0x8;

 if (inBox->high.x > centroid->high.x)
  quadrant |= 0x4;

 if (inBox->low.y > centroid->low.y)
  quadrant |= 0x2;

 if (inBox->high.y > centroid->high.y)
  quadrant |= 0x1;

 return quadrant;
}
