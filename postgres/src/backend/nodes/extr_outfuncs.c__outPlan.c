
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;


 int WRITE_NODE_TYPE (char*) ;
 int _outPlanInfo (int ,int const*) ;

__attribute__((used)) static void
_outPlan(StringInfo str, const Plan *node)
{
 WRITE_NODE_TYPE("PLAN");

 _outPlanInfo(str, (const Plan *) node);
}
