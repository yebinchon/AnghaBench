
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleDesc ;
typedef int PlanState ;
typedef int Oid ;
typedef int ExprState ;
typedef int AttrNumber ;


 int * ExecBuildGroupingEqual (int ,int ,int *,int *,int,int const*,int *,int const*,int *) ;
 int get_opcode (int const) ;
 scalar_t__ palloc (int) ;

ExprState *
execTuplesMatchPrepare(TupleDesc desc,
        int numCols,
        const AttrNumber *keyColIdx,
        const Oid *eqOperators,
        const Oid *collations,
        PlanState *parent)
{
 Oid *eqFunctions = (Oid *) palloc(numCols * sizeof(Oid));
 int i;
 ExprState *expr;

 if (numCols == 0)
  return ((void*)0);


 for (i = 0; i < numCols; i++)
  eqFunctions[i] = get_opcode(eqOperators[i]);


 expr = ExecBuildGroupingEqual(desc, desc, ((void*)0), ((void*)0),
          numCols, keyColIdx, eqFunctions, collations,
          parent);

 return expr;
}
