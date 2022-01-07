
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int rows; int total_cost; int startup_cost; TYPE_1__* pathtarget; } ;
struct TYPE_15__ {double tuple_fraction; } ;
struct TYPE_14__ {int width; } ;
typedef double Size ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int List ;


 int AGG_HASHED ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 double MAXALIGN (int ) ;
 int NIL ;
 int SizeofMinimalTupleHeader ;
 scalar_t__ compare_fractional_path_costs (TYPE_3__*,TYPE_3__*,double) ;
 int cost_agg (TYPE_3__*,TYPE_2__*,int ,int *,int,double,int ,int ,int ,int ) ;
 int cost_group (TYPE_3__*,TYPE_2__*,int,double,int ,int ,int ,int ) ;
 int cost_sort (TYPE_3__*,TYPE_2__*,int ,int ,int ,int ,double,long,double) ;
 int enable_hashagg ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char const*) ;
 int grouping_is_hashable (int *) ;
 int grouping_is_sortable (int *) ;
 int list_length (int *) ;
 long work_mem ;

__attribute__((used)) static bool
choose_hashed_setop(PlannerInfo *root, List *groupClauses,
     Path *input_path,
     double dNumGroups, double dNumOutputRows,
     const char *construct)
{
 int numGroupCols = list_length(groupClauses);
 bool can_sort;
 bool can_hash;
 Size hashentrysize;
 Path hashed_p;
 Path sorted_p;
 double tuple_fraction;


 can_sort = grouping_is_sortable(groupClauses);
 can_hash = grouping_is_hashable(groupClauses);
 if (can_hash && can_sort)
 {

 }
 else if (can_hash)
  return 1;
 else if (can_sort)
  return 0;
 else
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),

     errmsg("could not implement %s", construct),
     errdetail("Some of the datatypes only support hashing, while others only support sorting.")));


 if (!enable_hashagg)
  return 0;





 hashentrysize = MAXALIGN(input_path->pathtarget->width) + MAXALIGN(SizeofMinimalTupleHeader);

 if (hashentrysize * dNumGroups > work_mem * 1024L)
  return 0;
 cost_agg(&hashed_p, root, AGG_HASHED, ((void*)0),
    numGroupCols, dNumGroups,
    NIL,
    input_path->startup_cost, input_path->total_cost,
    input_path->rows);





 sorted_p.startup_cost = input_path->startup_cost;
 sorted_p.total_cost = input_path->total_cost;

 cost_sort(&sorted_p, root, NIL, sorted_p.total_cost,
     input_path->rows, input_path->pathtarget->width,
     0.0, work_mem, -1.0);
 cost_group(&sorted_p, root, numGroupCols, dNumGroups,
      NIL,
      sorted_p.startup_cost, sorted_p.total_cost,
      input_path->rows);





 tuple_fraction = root->tuple_fraction;
 if (tuple_fraction >= 1.0)
  tuple_fraction /= dNumOutputRows;

 if (compare_fractional_path_costs(&hashed_p, &sorted_p,
           tuple_fraction) < 0)
 {

  return 1;
 }
 return 0;
}
