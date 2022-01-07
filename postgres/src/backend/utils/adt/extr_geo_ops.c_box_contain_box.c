
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_8__ {TYPE_1__ low; TYPE_2__ high; } ;
typedef TYPE_3__ BOX ;


 scalar_t__ FPge (int ,int ) ;
 scalar_t__ FPle (int ,int ) ;

__attribute__((used)) static bool
box_contain_box(BOX *contains_box, BOX *contained_box)
{
 return FPge(contains_box->high.x, contained_box->high.x) &&
  FPle(contains_box->low.x, contained_box->low.x) &&
  FPge(contains_box->high.y, contained_box->high.y) &&
  FPle(contains_box->low.y, contained_box->low.y);
}
