
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int PlannerParamItem ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int item ;
 int paramId ;

__attribute__((used)) static void
_outPlannerParamItem(StringInfo str, const PlannerParamItem *node)
{
 WRITE_NODE_TYPE("PLANNERPARAMITEM");

 WRITE_NODE_FIELD(item);
 WRITE_INT_FIELD(paramId);
}
