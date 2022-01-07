
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double rows; double startup_cost; double total_cost; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Path ;
typedef int List ;
typedef double Cost ;


 double BLCKSZ ;
 double LOG2 (double) ;
 double ceil (double) ;
 double cpu_operator_cost ;
 double disable_cost ;
 int enable_sort ;
 double log (double) ;
 double random_page_cost ;
 double relation_byte_size (double,int) ;
 double seq_page_cost ;
 double tuplesort_merge_order (long) ;

void
cost_sort(Path *path, PlannerInfo *root,
    List *pathkeys, Cost input_cost, double tuples, int width,
    Cost comparison_cost, int sort_mem,
    double limit_tuples)
{
 Cost startup_cost = input_cost;
 Cost run_cost = 0;
 double input_bytes = relation_byte_size(tuples, width);
 double output_bytes;
 double output_tuples;
 long sort_mem_bytes = sort_mem * 1024L;

 if (!enable_sort)
  startup_cost += disable_cost;

 path->rows = tuples;





 if (tuples < 2.0)
  tuples = 2.0;


 comparison_cost += 2.0 * cpu_operator_cost;


 if (limit_tuples > 0 && limit_tuples < tuples)
 {
  output_tuples = limit_tuples;
  output_bytes = relation_byte_size(output_tuples, width);
 }
 else
 {
  output_tuples = tuples;
  output_bytes = input_bytes;
 }

 if (output_bytes > sort_mem_bytes)
 {



  double npages = ceil(input_bytes / BLCKSZ);
  double nruns = input_bytes / sort_mem_bytes;
  double mergeorder = tuplesort_merge_order(sort_mem_bytes);
  double log_runs;
  double npageaccesses;






  startup_cost += comparison_cost * tuples * LOG2(tuples);




  if (nruns > mergeorder)
   log_runs = ceil(log(nruns) / log(mergeorder));
  else
   log_runs = 1.0;
  npageaccesses = 2.0 * npages * log_runs;

  startup_cost += npageaccesses *
   (seq_page_cost * 0.75 + random_page_cost * 0.25);
 }
 else if (tuples > 2 * output_tuples || input_bytes > sort_mem_bytes)
 {






  startup_cost += comparison_cost * tuples * LOG2(2.0 * output_tuples);
 }
 else
 {

  startup_cost += comparison_cost * tuples * LOG2(tuples);
 }
 run_cost += cpu_operator_cost * tuples;

 path->startup_cost = startup_cost;
 path->total_cost = startup_cost + run_cost;
}
