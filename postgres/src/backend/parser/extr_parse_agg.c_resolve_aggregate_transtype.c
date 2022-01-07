
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int Assert (int) ;
 scalar_t__ IsPolymorphicType (int ) ;
 int enforce_generic_type_consistency (int *,int *,int,int ,int) ;
 int get_func_signature (int ,int **,int*) ;
 int pfree (int *) ;

Oid
resolve_aggregate_transtype(Oid aggfuncid,
       Oid aggtranstype,
       Oid *inputTypes,
       int numArguments)
{

 if (IsPolymorphicType(aggtranstype))
 {

  Oid *declaredArgTypes;
  int agg_nargs;

  (void) get_func_signature(aggfuncid, &declaredArgTypes, &agg_nargs);





  Assert(agg_nargs <= numArguments);

  aggtranstype = enforce_generic_type_consistency(inputTypes,
              declaredArgTypes,
              agg_nargs,
              aggtranstype,
              0);
  pfree(declaredArgTypes);
 }
 return aggtranstype;
}
