
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_batches; } ;
struct TYPE_6__ {int pathtype; double total_cost; double startup_cost; double rows; TYPE_1__* pathtarget; } ;
struct TYPE_5__ {int width; } ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef TYPE_3__ HashPath ;
typedef double Cost ;


 double BLCKSZ ;






 double ceil (double) ;
 double cpu_operator_cost ;
 double cpu_tuple_cost ;
 double relation_byte_size (double,int ) ;
 double seq_page_cost ;
 long work_mem ;

__attribute__((used)) static void
cost_rescan(PlannerInfo *root, Path *path,
   Cost *rescan_startup_cost,
   Cost *rescan_total_cost)
{
 switch (path->pathtype)
 {
  case 132:
   *rescan_startup_cost = 0;
   *rescan_total_cost = path->total_cost - path->startup_cost;
   break;
  case 131:





   if (((HashPath *) path)->num_batches == 1)
   {

    *rescan_startup_cost = 0;
    *rescan_total_cost = path->total_cost - path->startup_cost;
   }
   else
   {

    *rescan_startup_cost = path->startup_cost;
    *rescan_total_cost = path->total_cost;
   }
   break;
  case 133:
  case 128:
   {






    Cost run_cost = cpu_tuple_cost * path->rows;
    double nbytes = relation_byte_size(path->rows,
              path->pathtarget->width);
    long work_mem_bytes = work_mem * 1024L;

    if (nbytes > work_mem_bytes)
    {

     double npages = ceil(nbytes / BLCKSZ);

     run_cost += seq_page_cost * npages;
    }
    *rescan_startup_cost = 0;
    *rescan_total_cost = run_cost;
   }
   break;
  case 130:
  case 129:
   {
    Cost run_cost = cpu_operator_cost * path->rows;
    double nbytes = relation_byte_size(path->rows,
              path->pathtarget->width);
    long work_mem_bytes = work_mem * 1024L;

    if (nbytes > work_mem_bytes)
    {

     double npages = ceil(nbytes / BLCKSZ);

     run_cost += seq_page_cost * npages;
    }
    *rescan_startup_cost = 0;
    *rescan_total_cost = run_cost;
   }
   break;
  default:
   *rescan_startup_cost = path->startup_cost;
   *rescan_total_cost = path->total_cost;
   break;
 }
}
