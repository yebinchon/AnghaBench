
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parse; int * nullable_baserels; } ;
struct TYPE_5__ {int * jointree; } ;
typedef int Relids ;
typedef TYPE_2__ PlannerInfo ;
typedef int Node ;
typedef int List ;


 int Assert (int) ;
 int FromExpr ;
 scalar_t__ IsA (int *,int ) ;
 int * NIL ;
 int * deconstruct_recurse (TYPE_2__*,int *,int,int *,int *,int **) ;

List *
deconstruct_jointree(PlannerInfo *root)
{
 List *result;
 Relids qualscope;
 Relids inner_join_rels;
 List *postponed_qual_list = NIL;


 Assert(root->parse->jointree != ((void*)0) &&
     IsA(root->parse->jointree, FromExpr));


 root->nullable_baserels = ((void*)0);

 result = deconstruct_recurse(root, (Node *) root->parse->jointree, 0,
         &qualscope, &inner_join_rels,
         &postponed_qual_list);


 Assert(postponed_qual_list == NIL);

 return result;
}
