
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_10__ {scalar_t__ stanullfrac; } ;
struct TYPE_9__ {int opno; } ;
typedef double Selectivity ;
typedef int PlannerInfo ;
typedef TYPE_2__ OpExpr ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_3__* Form_pg_statistic ;
typedef int Expr ;
typedef int Datum ;


 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int const BTGreaterEqualStrategyNumber ;

 int const BTLessEqualStrategyNumber ;

 int CLAMP_PROBABILITY (double) ;
 double DEFAULT_INEQ_SEL ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int OidIsValid (int ) ;
 int ReleaseVariableStats (TYPE_1__) ;
 int examine_variable (int *,int *,int ,TYPE_1__*) ;
 int * get_leftop (int *) ;
 int get_op_opfamily_properties (int ,int ,int,int*,int *,int *) ;
 int get_opfamily_member (int ,int ,int ,int const) ;
 int * get_rightop (int *) ;
 int get_variable_range (int *,TYPE_1__*,int ,int *,int *) ;
 int is_opclause (int *) ;
 double scalarineqsel (int *,int ,int,int,TYPE_1__*,int ,int ) ;

void
mergejoinscansel(PlannerInfo *root, Node *clause,
     Oid opfamily, int strategy, bool nulls_first,
     Selectivity *leftstart, Selectivity *leftend,
     Selectivity *rightstart, Selectivity *rightend)
{
 Node *left,
      *right;
 VariableStatData leftvar,
    rightvar;
 int op_strategy;
 Oid op_lefttype;
 Oid op_righttype;
 Oid opno,
    lsortop,
    rsortop,
    lstatop,
    rstatop,
    ltop,
    leop,
    revltop,
    revleop;
 bool isgt;
 Datum leftmin,
    leftmax,
    rightmin,
    rightmax;
 double selec;



 *leftstart = *rightstart = 0.0;
 *leftend = *rightend = 1.0;


 if (!is_opclause(clause))
  return;
 opno = ((OpExpr *) clause)->opno;
 left = get_leftop((Expr *) clause);
 right = get_rightop((Expr *) clause);
 if (!right)
  return;


 examine_variable(root, left, 0, &leftvar);
 examine_variable(root, right, 0, &rightvar);


 get_op_opfamily_properties(opno, opfamily, 0,
          &op_strategy,
          &op_lefttype,
          &op_righttype);
 Assert(op_strategy == BTEqualStrategyNumber);
 switch (strategy)
 {
  case 128:
   isgt = 0;
   if (op_lefttype == op_righttype)
   {

    ltop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             128);
    leop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             BTLessEqualStrategyNumber);
    lsortop = ltop;
    rsortop = ltop;
    lstatop = lsortop;
    rstatop = rsortop;
    revltop = ltop;
    revleop = leop;
   }
   else
   {
    ltop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             128);
    leop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             BTLessEqualStrategyNumber);
    lsortop = get_opfamily_member(opfamily,
             op_lefttype, op_lefttype,
             128);
    rsortop = get_opfamily_member(opfamily,
             op_righttype, op_righttype,
             128);
    lstatop = lsortop;
    rstatop = rsortop;
    revltop = get_opfamily_member(opfamily,
             op_righttype, op_lefttype,
             128);
    revleop = get_opfamily_member(opfamily,
             op_righttype, op_lefttype,
             BTLessEqualStrategyNumber);
   }
   break;
  case 129:

   isgt = 1;
   if (op_lefttype == op_righttype)
   {

    ltop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             129);
    leop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             BTGreaterEqualStrategyNumber);
    lsortop = ltop;
    rsortop = ltop;
    lstatop = get_opfamily_member(opfamily,
             op_lefttype, op_lefttype,
             128);
    rstatop = lstatop;
    revltop = ltop;
    revleop = leop;
   }
   else
   {
    ltop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             129);
    leop = get_opfamily_member(opfamily,
             op_lefttype, op_righttype,
             BTGreaterEqualStrategyNumber);
    lsortop = get_opfamily_member(opfamily,
             op_lefttype, op_lefttype,
             129);
    rsortop = get_opfamily_member(opfamily,
             op_righttype, op_righttype,
             129);
    lstatop = get_opfamily_member(opfamily,
             op_lefttype, op_lefttype,
             128);
    rstatop = get_opfamily_member(opfamily,
             op_righttype, op_righttype,
             128);
    revltop = get_opfamily_member(opfamily,
             op_righttype, op_lefttype,
             129);
    revleop = get_opfamily_member(opfamily,
             op_righttype, op_lefttype,
             BTGreaterEqualStrategyNumber);
   }
   break;
  default:
   goto fail;
 }

 if (!OidIsValid(lsortop) ||
  !OidIsValid(rsortop) ||
  !OidIsValid(lstatop) ||
  !OidIsValid(rstatop) ||
  !OidIsValid(ltop) ||
  !OidIsValid(leop) ||
  !OidIsValid(revltop) ||
  !OidIsValid(revleop))
  goto fail;


 if (!isgt)
 {
  if (!get_variable_range(root, &leftvar, lstatop,
        &leftmin, &leftmax))
   goto fail;
  if (!get_variable_range(root, &rightvar, rstatop,
        &rightmin, &rightmax))
   goto fail;
 }
 else
 {

  if (!get_variable_range(root, &leftvar, lstatop,
        &leftmax, &leftmin))
   goto fail;
  if (!get_variable_range(root, &rightvar, rstatop,
        &rightmax, &rightmin))
   goto fail;
 }






 selec = scalarineqsel(root, leop, isgt, 1, &leftvar,
        rightmax, op_righttype);
 if (selec != DEFAULT_INEQ_SEL)
  *leftend = selec;


 selec = scalarineqsel(root, revleop, isgt, 1, &rightvar,
        leftmax, op_lefttype);
 if (selec != DEFAULT_INEQ_SEL)
  *rightend = selec;







 if (*leftend > *rightend)
  *leftend = 1.0;
 else if (*leftend < *rightend)
  *rightend = 1.0;
 else
  *leftend = *rightend = 1.0;







 selec = scalarineqsel(root, ltop, isgt, 0, &leftvar,
        rightmin, op_righttype);
 if (selec != DEFAULT_INEQ_SEL)
  *leftstart = selec;


 selec = scalarineqsel(root, revltop, isgt, 0, &rightvar,
        leftmin, op_lefttype);
 if (selec != DEFAULT_INEQ_SEL)
  *rightstart = selec;







 if (*leftstart < *rightstart)
  *leftstart = 0.0;
 else if (*leftstart > *rightstart)
  *rightstart = 0.0;
 else
  *leftstart = *rightstart = 0.0;







 if (nulls_first)
 {
  Form_pg_statistic stats;

  if (HeapTupleIsValid(leftvar.statsTuple))
  {
   stats = (Form_pg_statistic) GETSTRUCT(leftvar.statsTuple);
   *leftstart += stats->stanullfrac;
   CLAMP_PROBABILITY(*leftstart);
   *leftend += stats->stanullfrac;
   CLAMP_PROBABILITY(*leftend);
  }
  if (HeapTupleIsValid(rightvar.statsTuple))
  {
   stats = (Form_pg_statistic) GETSTRUCT(rightvar.statsTuple);
   *rightstart += stats->stanullfrac;
   CLAMP_PROBABILITY(*rightstart);
   *rightend += stats->stanullfrac;
   CLAMP_PROBABILITY(*rightend);
  }
 }


 if (*leftstart >= *leftend)
 {
  *leftstart = 0.0;
  *leftend = 1.0;
 }
 if (*rightstart >= *rightend)
 {
  *rightstart = 0.0;
  *rightend = 1.0;
 }

fail:
 ReleaseVariableStats(leftvar);
 ReleaseVariableStats(rightvar);
}
