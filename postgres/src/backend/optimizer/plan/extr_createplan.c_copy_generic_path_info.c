
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int parallel_safe; int parallel_aware; TYPE_1__* pathtarget; int rows; int total_cost; int startup_cost; } ;
struct TYPE_7__ {int parallel_safe; int parallel_aware; int plan_width; int plan_rows; int total_cost; int startup_cost; } ;
struct TYPE_6__ {int width; } ;
typedef TYPE_2__ Plan ;
typedef TYPE_3__ Path ;



__attribute__((used)) static void
copy_generic_path_info(Plan *dest, Path *src)
{
 dest->startup_cost = src->startup_cost;
 dest->total_cost = src->total_cost;
 dest->plan_rows = src->rows;
 dest->plan_width = src->pathtarget->width;
 dest->parallel_aware = src->parallel_aware;
 dest->parallel_safe = src->parallel_safe;
}
