
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int relids; int joininfo; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int * NIL ;
 int generate_join_implied_equalities (int *,int ,int ,TYPE_1__*) ;
 int * list_concat (int *,int ) ;
 int * subbuild_joinrel_restrictlist (TYPE_1__*,int ,int *) ;

__attribute__((used)) static List *
build_joinrel_restrictlist(PlannerInfo *root,
         RelOptInfo *joinrel,
         RelOptInfo *outer_rel,
         RelOptInfo *inner_rel)
{
 List *result;






 result = subbuild_joinrel_restrictlist(joinrel, outer_rel->joininfo, NIL);
 result = subbuild_joinrel_restrictlist(joinrel, inner_rel->joininfo, result);






 result = list_concat(result,
       generate_join_implied_equalities(root,
                joinrel->relids,
                outer_rel->relids,
                inner_rel));

 return result;
}
