
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double plan_rows; int plan_width; } ;
typedef TYPE_1__ Plan ;


 double MAXALIGN (int ) ;
 int SizeofHeapTupleHeader ;
 long work_mem ;

__attribute__((used)) static bool
subplan_is_hashable(Plan *plan)
{
 double subquery_size;







 subquery_size = plan->plan_rows *
  (MAXALIGN(plan->plan_width) + MAXALIGN(SizeofHeapTupleHeader));
 if (subquery_size > work_mem * 1024L)
  return 0;

 return 1;
}
