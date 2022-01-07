
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_10__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_9__ {void* y; void* x; } ;
typedef TYPE_3__ Point ;
typedef TYPE_4__ BOX ;


 void* float8_div (int ,double) ;
 int float8_pl (int ,int ) ;

__attribute__((used)) static void
box_cn(Point *center, BOX *box)
{
 center->x = float8_div(float8_pl(box->high.x, box->low.x), 2.0);
 center->y = float8_div(float8_pl(box->high.y, box->low.y), 2.0);
}
