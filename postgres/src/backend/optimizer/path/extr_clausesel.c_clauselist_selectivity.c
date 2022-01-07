
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rtekind; scalar_t__ statlist; } ;
typedef int SpecialJoinInfo ;
typedef double Selectivity ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef int JoinType ;
typedef int Bitmapset ;


 scalar_t__ NIL ;
 scalar_t__ RTE_RELATION ;
 double clauselist_selectivity_simple (int *,int *,int,int ,int *,int *) ;
 TYPE_1__* find_single_rel_for_clauses (int *,int *) ;
 double statext_clauselist_selectivity (int *,int *,int,int ,int *,TYPE_1__*,int **) ;

Selectivity
clauselist_selectivity(PlannerInfo *root,
        List *clauses,
        int varRelid,
        JoinType jointype,
        SpecialJoinInfo *sjinfo)
{
 Selectivity s1 = 1.0;
 RelOptInfo *rel;
 Bitmapset *estimatedclauses = ((void*)0);





 rel = find_single_rel_for_clauses(root, clauses);
 if (rel && rel->rtekind == RTE_RELATION && rel->statlist != NIL)
 {







  s1 *= statext_clauselist_selectivity(root, clauses, varRelid,
            jointype, sjinfo, rel,
            &estimatedclauses);
 }





 return s1 * clauselist_selectivity_simple(root, clauses, varRelid,
             jointype, sjinfo,
             estimatedclauses);
}
