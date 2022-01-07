
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_8__ {TYPE_1__ high; TYPE_2__ low; } ;
typedef TYPE_3__ BOX ;


 scalar_t__ FPle (int ,int ) ;

__attribute__((used)) static bool
box_ov(BOX *box1, BOX *box2)
{
 return (FPle(box1->low.x, box2->high.x) &&
   FPle(box2->low.x, box1->high.x) &&
   FPle(box1->low.y, box2->high.y) &&
   FPle(box2->low.y, box1->high.y));
}
