
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* parse; TYPE_1__* glob; } ;
struct TYPE_7__ {int * jointree; } ;
struct TYPE_6__ {scalar_t__ lastPHId; } ;
typedef TYPE_3__ PlannerInfo ;
typedef int Node ;


 int Assert (int) ;
 int FromExpr ;
 scalar_t__ IsA (int *,int ) ;
 int find_placeholders_recurse (TYPE_3__*,int *) ;

void
find_placeholders_in_jointree(PlannerInfo *root)
{

 if (root->glob->lastPHId != 0)
 {

  Assert(root->parse->jointree != ((void*)0) &&
      IsA(root->parse->jointree, FromExpr));
  find_placeholders_recurse(root, (Node *) root->parse->jointree);
 }
}
