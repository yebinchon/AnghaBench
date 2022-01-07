
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Plan ;


 int COPY_BITMAPSET_FIELD (int ) ;
 int COPY_NODE_FIELD (int ) ;
 int COPY_SCALAR_FIELD (int ) ;
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
CopyPlanFields(const Plan *from, Plan *newnode)
{
 COPY_SCALAR_FIELD(startup_cost);
 COPY_SCALAR_FIELD(total_cost);
 COPY_SCALAR_FIELD(plan_rows);
 COPY_SCALAR_FIELD(plan_width);
 COPY_SCALAR_FIELD(parallel_aware);
 COPY_SCALAR_FIELD(parallel_safe);
 COPY_SCALAR_FIELD(plan_node_id);
 COPY_NODE_FIELD(targetlist);
 COPY_NODE_FIELD(qual);
 COPY_NODE_FIELD(lefttree);
 COPY_NODE_FIELD(righttree);
 COPY_NODE_FIELD(initPlan);
 COPY_BITMAPSET_FIELD(extParam);
 COPY_BITMAPSET_FIELD(allParam);
}
