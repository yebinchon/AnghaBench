
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int * indexclauses; } ;
struct TYPE_11__ {int nkeycolumns; } ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef TYPE_1__ IndexOptInfo ;
typedef TYPE_2__ IndexClauseSet ;


 int * NIL ;
 int consider_index_join_outer_rels (int *,int *,TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int **,int ,int,int **) ;
 scalar_t__ list_length (int ) ;

__attribute__((used)) static void
consider_index_join_clauses(PlannerInfo *root, RelOptInfo *rel,
       IndexOptInfo *index,
       IndexClauseSet *rclauseset,
       IndexClauseSet *jclauseset,
       IndexClauseSet *eclauseset,
       List **bitindexpaths)
{
 int considered_clauses = 0;
 List *considered_relids = NIL;
 int indexcol;
 for (indexcol = 0; indexcol < index->nkeycolumns; indexcol++)
 {

  considered_clauses += list_length(jclauseset->indexclauses[indexcol]);
  consider_index_join_outer_rels(root, rel, index,
            rclauseset, jclauseset, eclauseset,
            bitindexpaths,
            jclauseset->indexclauses[indexcol],
            considered_clauses,
            &considered_relids);

  considered_clauses += list_length(eclauseset->indexclauses[indexcol]);
  consider_index_join_outer_rels(root, rel, index,
            rclauseset, jclauseset, eclauseset,
            bitindexpaths,
            eclauseset->indexclauses[indexcol],
            considered_clauses,
            &considered_relids);
 }
}
