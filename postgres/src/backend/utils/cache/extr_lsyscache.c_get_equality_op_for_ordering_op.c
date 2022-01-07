
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int Oid ;


 int BTEqualStrategyNumber ;
 scalar_t__ BTGreaterStrategyNumber ;
 int InvalidOid ;
 int get_opfamily_member (int ,int ,int ,int ) ;
 scalar_t__ get_ordering_op_properties (int ,int *,int *,scalar_t__*) ;

Oid
get_equality_op_for_ordering_op(Oid opno, bool *reverse)
{
 Oid result = InvalidOid;
 Oid opfamily;
 Oid opcintype;
 int16 strategy;


 if (get_ordering_op_properties(opno,
           &opfamily, &opcintype, &strategy))
 {

  result = get_opfamily_member(opfamily,
          opcintype,
          opcintype,
          BTEqualStrategyNumber);
  if (reverse)
   *reverse = (strategy == BTGreaterStrategyNumber);
 }

 return result;
}
