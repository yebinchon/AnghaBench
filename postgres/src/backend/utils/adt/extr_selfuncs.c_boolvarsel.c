
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
typedef double Selectivity ;
typedef int PlannerInfo ;
typedef int Node ;


 int BoolGetDatum (int) ;
 int BooleanEqualOperator ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ReleaseVariableStats (TYPE_1__) ;
 int examine_variable (int *,int *,int,TYPE_1__*) ;
 double var_eq_const (TYPE_1__*,int ,int ,int,int,int) ;

Selectivity
boolvarsel(PlannerInfo *root, Node *arg, int varRelid)
{
 VariableStatData vardata;
 double selec;

 examine_variable(root, arg, varRelid, &vardata);
 if (HeapTupleIsValid(vardata.statsTuple))
 {




  selec = var_eq_const(&vardata, BooleanEqualOperator,
        BoolGetDatum(1), 0, 1, 0);
 }
 else
 {

  selec = 0.5;
 }
 ReleaseVariableStats(vardata);
 return selec;
}
