
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SpecialJoinInfo ;
typedef int Selectivity ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef int JoinType ;
typedef int Bitmapset ;


 int dependencies_clauselist_selectivity (int *,int *,int,int ,int *,int *,int **) ;
 int statext_mcv_clauselist_selectivity (int *,int *,int,int ,int *,int *,int **) ;

Selectivity
statext_clauselist_selectivity(PlannerInfo *root, List *clauses, int varRelid,
          JoinType jointype, SpecialJoinInfo *sjinfo,
          RelOptInfo *rel, Bitmapset **estimatedclauses)
{
 Selectivity sel;


 sel = statext_mcv_clauselist_selectivity(root, clauses, varRelid, jointype,
            sjinfo, rel, estimatedclauses);
 sel *= dependencies_clauselist_selectivity(root, clauses, varRelid,
              jointype, sjinfo, rel,
              estimatedclauses);

 return sel;
}
