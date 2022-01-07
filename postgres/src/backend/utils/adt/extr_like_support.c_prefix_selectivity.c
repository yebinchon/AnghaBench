
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_13__ {int stacoll; } ;
struct TYPE_12__ {int constvalue; int consttype; } ;
typedef double Selectivity ;
typedef int PlannerInfo ;
typedef scalar_t__ Oid ;
typedef int FmgrInfo ;
typedef TYPE_2__ Const ;
typedef TYPE_3__ AttStatsSlot ;


 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int BTGreaterEqualStrategyNumber ;
 int BTLessStrategyNumber ;
 int DEFAULT_COLLATION_OID ;
 double DEFAULT_MATCH_SEL ;
 int ERROR ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 double Max (double,double) ;
 int STATISTIC_KIND_HISTOGRAM ;
 int elog (int ,char*,scalar_t__) ;
 int fmgr_info (int ,int *) ;
 scalar_t__ get_attstatsslot (TYPE_3__*,int ,int ,scalar_t__,int ) ;
 int get_opcode (scalar_t__) ;
 scalar_t__ get_opfamily_member (scalar_t__,scalar_t__,scalar_t__,int ) ;
 double ineq_histogram_selectivity (int *,TYPE_1__*,int *,int,int,int ,int ) ;
 TYPE_2__* make_greater_string (TYPE_2__*,int *,int ) ;
 double var_eq_const (TYPE_1__*,scalar_t__,int ,int,int,int) ;

__attribute__((used)) static Selectivity
prefix_selectivity(PlannerInfo *root, VariableStatData *vardata,
       Oid vartype, Oid opfamily, Const *prefixcon)
{
 Selectivity prefixsel;
 Oid cmpopr;
 FmgrInfo opproc;
 AttStatsSlot sslot;
 Const *greaterstrcon;
 Selectivity eq_sel;

 cmpopr = get_opfamily_member(opfamily, vartype, vartype,
         BTGreaterEqualStrategyNumber);
 if (cmpopr == InvalidOid)
  elog(ERROR, "no >= operator for opfamily %u", opfamily);
 fmgr_info(get_opcode(cmpopr), &opproc);

 prefixsel = ineq_histogram_selectivity(root, vardata,
             &opproc, 1, 1,
             prefixcon->constvalue,
             prefixcon->consttype);

 if (prefixsel < 0.0)
 {

  return DEFAULT_MATCH_SEL;
 }
 if (HeapTupleIsValid(vardata->statsTuple) &&
  get_attstatsslot(&sslot, vardata->statsTuple,
       STATISTIC_KIND_HISTOGRAM, InvalidOid, 0))
                                 ;
 else
  sslot.stacoll = DEFAULT_COLLATION_OID;
 cmpopr = get_opfamily_member(opfamily, vartype, vartype,
         BTLessStrategyNumber);
 if (cmpopr == InvalidOid)
  elog(ERROR, "no < operator for opfamily %u", opfamily);
 fmgr_info(get_opcode(cmpopr), &opproc);
 greaterstrcon = make_greater_string(prefixcon, &opproc, sslot.stacoll);
 if (greaterstrcon)
 {
  Selectivity topsel;

  topsel = ineq_histogram_selectivity(root, vardata,
           &opproc, 0, 0,
           greaterstrcon->constvalue,
           greaterstrcon->consttype);


  Assert(topsel >= 0.0);







  prefixsel = topsel + prefixsel - 1.0;
 }
 cmpopr = get_opfamily_member(opfamily, vartype, vartype,
         BTEqualStrategyNumber);
 if (cmpopr == InvalidOid)
  elog(ERROR, "no = operator for opfamily %u", opfamily);
 eq_sel = var_eq_const(vardata, cmpopr, prefixcon->constvalue,
        0, 1, 0);

 prefixsel = Max(prefixsel, eq_sel);

 return prefixsel;
}
