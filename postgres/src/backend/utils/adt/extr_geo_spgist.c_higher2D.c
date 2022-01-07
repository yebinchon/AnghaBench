
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int high; } ;
struct TYPE_8__ {int high; } ;
struct TYPE_7__ {int high; } ;
struct TYPE_9__ {TYPE_2__ right; TYPE_1__ left; } ;
typedef TYPE_3__ RangeBox ;
typedef TYPE_4__ Range ;


 scalar_t__ FPgt (int ,int ) ;

__attribute__((used)) static bool
higher2D(RangeBox *range_box, Range *query)
{
 return FPgt(range_box->left.high, query->high) &&
  FPgt(range_box->right.high, query->high);
}
