
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rargs; int largs; int inputcollids; int opnos; } ;
typedef int SpecialJoinInfo ;
typedef int Selectivity ;
typedef TYPE_1__ RowCompareExpr ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int JoinType ;


 int NumRelids (int *) ;
 int join_selectivity (int *,int ,int *,int ,int ,int *) ;
 int linitial (int ) ;
 int linitial_oid (int ) ;
 int * list_make2 (int ,int ) ;
 int restriction_selectivity (int *,int ,int *,int ,int) ;

Selectivity
rowcomparesel(PlannerInfo *root,
     RowCompareExpr *clause,
     int varRelid, JoinType jointype, SpecialJoinInfo *sjinfo)
{
 Selectivity s1;
 Oid opno = linitial_oid(clause->opnos);
 Oid inputcollid = linitial_oid(clause->inputcollids);
 List *opargs;
 bool is_join_clause;


 opargs = list_make2(linitial(clause->largs), linitial(clause->rargs));






 if (varRelid != 0)
 {




  is_join_clause = 0;
 }
 else if (sjinfo == ((void*)0))
 {




  is_join_clause = 0;
 }
 else
 {



  is_join_clause = (NumRelids((Node *) opargs) > 1);
 }

 if (is_join_clause)
 {

  s1 = join_selectivity(root, opno,
         opargs,
         inputcollid,
         jointype,
         sjinfo);
 }
 else
 {

  s1 = restriction_selectivity(root, opno,
          opargs,
          inputcollid,
          varRelid);
 }

 return s1;
}
