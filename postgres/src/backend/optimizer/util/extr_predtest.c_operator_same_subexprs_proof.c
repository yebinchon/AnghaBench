
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__ get_negator (scalar_t__) ;
 int operator_same_subexprs_lookup (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static bool
operator_same_subexprs_proof(Oid pred_op, Oid clause_op, bool refute_it)
{
 if (refute_it)
 {
  if (get_negator(pred_op) == clause_op)
   return 1;
 }
 else
 {
  if (pred_op == clause_op)
   return 1;
 }





 return operator_same_subexprs_lookup(pred_op, clause_op, refute_it);
}
