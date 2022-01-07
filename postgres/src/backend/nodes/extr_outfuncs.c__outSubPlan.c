
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubPlan ;
typedef int StringInfo ;


 int SubLinkType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int WRITE_STRING_FIELD (int ) ;
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

__attribute__((used)) static void
_outSubPlan(StringInfo str, const SubPlan *node)
{
 WRITE_NODE_TYPE("SUBPLAN");

 WRITE_ENUM_FIELD(subLinkType, SubLinkType);
 WRITE_NODE_FIELD(testexpr);
 WRITE_NODE_FIELD(paramIds);
 WRITE_INT_FIELD(plan_id);
 WRITE_STRING_FIELD(plan_name);
 WRITE_OID_FIELD(firstColType);
 WRITE_INT_FIELD(firstColTypmod);
 WRITE_OID_FIELD(firstColCollation);
 WRITE_BOOL_FIELD(useHashTable);
 WRITE_BOOL_FIELD(unknownEqFalse);
 WRITE_BOOL_FIELD(parallel_safe);
 WRITE_NODE_FIELD(setParam);
 WRITE_NODE_FIELD(parParam);
 WRITE_NODE_FIELD(args);
 WRITE_FLOAT_FIELD(startup_cost, "%.2f");
 WRITE_FLOAT_FIELD(per_call_cost, "%.2f");
}
