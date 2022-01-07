
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int FmgrInfo ;


 int Assert (int) ;
 int ERROR ;
 int elog (int ,char*,scalar_t__) ;
 int fmgr_info (scalar_t__,int *) ;
 int get_op_hash_functions (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ get_opcode (scalar_t__) ;
 scalar_t__ palloc (int) ;

void
execTuplesHashPrepare(int numCols,
       const Oid *eqOperators,
       Oid **eqFuncOids,
       FmgrInfo **hashFunctions)
{
 int i;

 *eqFuncOids = (Oid *) palloc(numCols * sizeof(Oid));
 *hashFunctions = (FmgrInfo *) palloc(numCols * sizeof(FmgrInfo));

 for (i = 0; i < numCols; i++)
 {
  Oid eq_opr = eqOperators[i];
  Oid eq_function;
  Oid left_hash_function;
  Oid right_hash_function;

  eq_function = get_opcode(eq_opr);
  if (!get_op_hash_functions(eq_opr,
           &left_hash_function, &right_hash_function))
   elog(ERROR, "could not find hash function for hash operator %u",
     eq_opr);

  Assert(left_hash_function == right_hash_function);
  (*eqFuncOids)[i] = eq_function;
  fmgr_info(right_hash_function, &(*hashFunctions)[i]);
 }
}
