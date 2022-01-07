
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {double ppi_rows; } ;
struct TYPE_18__ {double rows; scalar_t__ parallel_workers; double startup_cost; double total_cost; TYPE_2__* pathtarget; } ;
struct TYPE_17__ {double startup; double per_tuple; } ;
struct TYPE_16__ {scalar_t__ relid; scalar_t__ rtekind; double rows; double pages; double tuples; int reltablespace; } ;
struct TYPE_14__ {double startup; double per_tuple; } ;
struct TYPE_15__ {TYPE_1__ cost; } ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_5__ Path ;
typedef TYPE_6__ ParamPathInfo ;
typedef double Cost ;


 int Assert (int) ;
 scalar_t__ RTE_RELATION ;
 double clamp_row_est (double) ;
 double cpu_tuple_cost ;
 double disable_cost ;
 int enable_seqscan ;
 double get_parallel_divisor (TYPE_5__*) ;
 int get_restriction_qual_cost (int *,TYPE_3__*,TYPE_6__*,TYPE_4__*) ;
 int get_tablespace_page_costs (int ,int *,double*) ;

void
cost_seqscan(Path *path, PlannerInfo *root,
    RelOptInfo *baserel, ParamPathInfo *param_info)
{
 Cost startup_cost = 0;
 Cost cpu_run_cost;
 Cost disk_run_cost;
 double spc_seq_page_cost;
 QualCost qpqual_cost;
 Cost cpu_per_tuple;


 Assert(baserel->relid > 0);
 Assert(baserel->rtekind == RTE_RELATION);


 if (param_info)
  path->rows = param_info->ppi_rows;
 else
  path->rows = baserel->rows;

 if (!enable_seqscan)
  startup_cost += disable_cost;


 get_tablespace_page_costs(baserel->reltablespace,
         ((void*)0),
         &spc_seq_page_cost);




 disk_run_cost = spc_seq_page_cost * baserel->pages;


 get_restriction_qual_cost(root, baserel, param_info, &qpqual_cost);

 startup_cost += qpqual_cost.startup;
 cpu_per_tuple = cpu_tuple_cost + qpqual_cost.per_tuple;
 cpu_run_cost = cpu_per_tuple * baserel->tuples;

 startup_cost += path->pathtarget->cost.startup;
 cpu_run_cost += path->pathtarget->cost.per_tuple * path->rows;


 if (path->parallel_workers > 0)
 {
  double parallel_divisor = get_parallel_divisor(path);


  cpu_run_cost /= parallel_divisor;
  path->rows = clamp_row_est(path->rows / parallel_divisor);
 }

 path->startup_cost = startup_cost;
 path->total_cost = startup_cost + cpu_run_cost + disk_run_cost;
}
