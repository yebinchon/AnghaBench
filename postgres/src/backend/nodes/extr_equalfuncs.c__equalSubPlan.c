
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubPlan ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int args ;
 int firstColCollation ;
 int firstColType ;
 int firstColTypmod ;
 int parParam ;
 int parallel_safe ;
 int paramIds ;
 int per_call_cost ;
 int plan_id ;
 int plan_name ;
 int setParam ;
 int startup_cost ;
 int subLinkType ;
 int testexpr ;
 int unknownEqFalse ;
 int useHashTable ;

__attribute__((used)) static bool
_equalSubPlan(const SubPlan *a, const SubPlan *b)
{
 COMPARE_SCALAR_FIELD(subLinkType);
 COMPARE_NODE_FIELD(testexpr);
 COMPARE_NODE_FIELD(paramIds);
 COMPARE_SCALAR_FIELD(plan_id);
 COMPARE_STRING_FIELD(plan_name);
 COMPARE_SCALAR_FIELD(firstColType);
 COMPARE_SCALAR_FIELD(firstColTypmod);
 COMPARE_SCALAR_FIELD(firstColCollation);
 COMPARE_SCALAR_FIELD(useHashTable);
 COMPARE_SCALAR_FIELD(unknownEqFalse);
 COMPARE_SCALAR_FIELD(parallel_safe);
 COMPARE_NODE_FIELD(setParam);
 COMPARE_NODE_FIELD(parParam);
 COMPARE_NODE_FIELD(args);
 COMPARE_SCALAR_FIELD(startup_cost);
 COMPARE_SCALAR_FIELD(per_call_cost);

 return 1;
}
