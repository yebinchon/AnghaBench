
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int indexcol; TYPE_2__* index; } ;
typedef TYPE_1__ ec_member_matches_arg ;
struct TYPE_8__ {int lateral_referencers; int has_eclass_joins; } ;
struct TYPE_7__ {int nkeycolumns; TYPE_5__* rel; } ;
typedef int PlannerInfo ;
typedef int List ;
typedef TYPE_2__ IndexOptInfo ;
typedef int IndexClauseSet ;


 int ec_member_matches_indexcol ;
 int * generate_implied_equalities_for_column (int *,TYPE_5__*,int ,void*,int ) ;
 int match_clauses_to_index (int *,int *,TYPE_2__*,int *) ;

__attribute__((used)) static void
match_eclass_clauses_to_index(PlannerInfo *root, IndexOptInfo *index,
         IndexClauseSet *clauseset)
{
 int indexcol;


 if (!index->rel->has_eclass_joins)
  return;

 for (indexcol = 0; indexcol < index->nkeycolumns; indexcol++)
 {
  ec_member_matches_arg arg;
  List *clauses;


  arg.index = index;
  arg.indexcol = indexcol;
  clauses = generate_implied_equalities_for_column(root,
               index->rel,
               ec_member_matches_indexcol,
               (void *) &arg,
               index->rel->lateral_referencers);






  match_clauses_to_index(root, clauses, index, clauseset);
 }
}
