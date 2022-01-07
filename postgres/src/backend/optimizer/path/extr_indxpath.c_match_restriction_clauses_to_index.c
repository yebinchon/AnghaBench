
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indrestrictinfo; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ IndexOptInfo ;
typedef int IndexClauseSet ;


 int match_clauses_to_index (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static void
match_restriction_clauses_to_index(PlannerInfo *root,
           IndexOptInfo *index,
           IndexClauseSet *clauseset)
{

 match_clauses_to_index(root, index->indrestrictinfo, index, clauseset);
}
