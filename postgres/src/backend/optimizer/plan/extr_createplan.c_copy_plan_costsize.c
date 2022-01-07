
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parallel_aware; int parallel_safe; int plan_width; int plan_rows; int total_cost; int startup_cost; } ;
typedef TYPE_1__ Plan ;



__attribute__((used)) static void
copy_plan_costsize(Plan *dest, Plan *src)
{
 dest->startup_cost = src->startup_cost;
 dest->total_cost = src->total_cost;
 dest->plan_rows = src->plan_rows;
 dest->plan_width = src->plan_width;

 dest->parallel_aware = 0;

 dest->parallel_safe = src->parallel_safe;
}
