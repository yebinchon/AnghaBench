
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Plan ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int allParam ;
 int extParam ;
 int initPlan ;
 int lefttree ;
 int parallel_aware ;
 int parallel_safe ;
 int plan_node_id ;
 int plan_rows ;
 int plan_width ;
 int qual ;
 int righttree ;
 int startup_cost ;
 int targetlist ;
 int total_cost ;

__attribute__((used)) static void
_outPlanInfo(StringInfo str, const Plan *node)
{
 WRITE_FLOAT_FIELD(startup_cost, "%.2f");
 WRITE_FLOAT_FIELD(total_cost, "%.2f");
 WRITE_FLOAT_FIELD(plan_rows, "%.0f");
 WRITE_INT_FIELD(plan_width);
 WRITE_BOOL_FIELD(parallel_aware);
 WRITE_BOOL_FIELD(parallel_safe);
 WRITE_INT_FIELD(plan_node_id);
 WRITE_NODE_FIELD(targetlist);
 WRITE_NODE_FIELD(qual);
 WRITE_NODE_FIELD(lefttree);
 WRITE_NODE_FIELD(righttree);
 WRITE_NODE_FIELD(initPlan);
 WRITE_BITMAPSET_FIELD(extParam);
 WRITE_BITMAPSET_FIELD(allParam);
}
