
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int low; int high; } ;
struct TYPE_8__ {int low; } ;
struct TYPE_7__ {int high; } ;
struct TYPE_9__ {TYPE_2__ left; TYPE_1__ right; } ;
typedef TYPE_3__ RangeBox ;
typedef TYPE_4__ Range ;


 scalar_t__ FPge (int ,int ) ;
 scalar_t__ FPle (int ,int ) ;

__attribute__((used)) static bool
contain2D(RangeBox *range_box, Range *query)
{
 return FPge(range_box->right.high, query->high) &&
  FPle(range_box->left.low, query->low);
}
