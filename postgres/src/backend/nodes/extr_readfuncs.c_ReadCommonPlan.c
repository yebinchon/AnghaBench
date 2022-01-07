
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Plan ;


 int READ_BITMAPSET_FIELD (int ) ;
 int READ_BOOL_FIELD (int ) ;
 int READ_FLOAT_FIELD (int ) ;
 int READ_INT_FIELD (int ) ;
 int READ_NODE_FIELD (int ) ;
 int READ_TEMP_LOCALS () ;
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
ReadCommonPlan(Plan *local_node)
{
 READ_TEMP_LOCALS();

 READ_FLOAT_FIELD(startup_cost);
 READ_FLOAT_FIELD(total_cost);
 READ_FLOAT_FIELD(plan_rows);
 READ_INT_FIELD(plan_width);
 READ_BOOL_FIELD(parallel_aware);
 READ_BOOL_FIELD(parallel_safe);
 READ_INT_FIELD(plan_node_id);
 READ_NODE_FIELD(targetlist);
 READ_NODE_FIELD(qual);
 READ_NODE_FIELD(lefttree);
 READ_NODE_FIELD(righttree);
 READ_NODE_FIELD(initPlan);
 READ_BITMAPSET_FIELD(extParam);
 READ_BITMAPSET_FIELD(allParam);
}
