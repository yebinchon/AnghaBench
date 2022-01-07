
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mergeopfamilies; TYPE_1__* right_ec; TYPE_2__* left_ec; } ;
struct TYPE_6__ {struct TYPE_6__* ec_merged; } ;
struct TYPE_5__ {struct TYPE_5__* ec_merged; } ;
typedef TYPE_3__ RestrictInfo ;
typedef int PlannerInfo ;


 int Assert (int) ;
 scalar_t__ NIL ;

void
update_mergeclause_eclasses(PlannerInfo *root, RestrictInfo *restrictinfo)
{

 Assert(restrictinfo->mergeopfamilies != NIL);

 Assert(restrictinfo->left_ec != ((void*)0));
 Assert(restrictinfo->right_ec != ((void*)0));


 while (restrictinfo->left_ec->ec_merged)
  restrictinfo->left_ec = restrictinfo->left_ec->ec_merged;
 while (restrictinfo->right_ec->ec_merged)
  restrictinfo->right_ec = restrictinfo->right_ec->ec_merged;
}
