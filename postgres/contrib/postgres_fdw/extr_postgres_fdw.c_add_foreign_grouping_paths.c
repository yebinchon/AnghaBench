
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_25__ {scalar_t__ patype; int havingQual; } ;
struct TYPE_24__ {double rows; int width; void* total_cost; void* startup_cost; int local_conds; int local_conds_cost; int local_conds_sel; int user; int server; int table; TYPE_1__* outerrel; } ;
struct TYPE_23__ {int hasHavingQual; TYPE_2__* parse; } ;
struct TYPE_22__ {int hasAggs; int groupingSets; int groupClause; } ;
struct TYPE_21__ {int reltarget; TYPE_4__* fdw_private; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ PgFdwRelationInfo ;
typedef int Path ;
typedef TYPE_5__ GroupPathExtraData ;
typedef int ForeignPath ;
typedef void* Cost ;


 int Assert (int) ;
 int JOIN_INNER ;
 int NIL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_FULL ;
 scalar_t__ PARTITIONWISE_AGGREGATE_NONE ;
 int add_path (TYPE_1__*,int *) ;
 int clauselist_selectivity (TYPE_3__*,int ,int ,int ,int *) ;
 int cost_qual_eval (int *,int ,TYPE_3__*) ;
 int * create_foreign_upper_path (TYPE_3__*,TYPE_1__*,int ,double,void*,void*,int ,int *,int ) ;
 int estimate_path_cost_size (TYPE_3__*,TYPE_1__*,int ,int ,int *,double*,int*,void**,void**) ;
 int foreign_grouping_ok (TYPE_3__*,TYPE_1__*,int ) ;
 int merge_fdw_options (TYPE_4__*,TYPE_4__*,int *) ;

__attribute__((used)) static void
add_foreign_grouping_paths(PlannerInfo *root, RelOptInfo *input_rel,
         RelOptInfo *grouped_rel,
         GroupPathExtraData *extra)
{
 Query *parse = root->parse;
 PgFdwRelationInfo *ifpinfo = input_rel->fdw_private;
 PgFdwRelationInfo *fpinfo = grouped_rel->fdw_private;
 ForeignPath *grouppath;
 double rows;
 int width;
 Cost startup_cost;
 Cost total_cost;


 if (!parse->groupClause && !parse->groupingSets && !parse->hasAggs &&
  !root->hasHavingQual)
  return;

 Assert(extra->patype == PARTITIONWISE_AGGREGATE_NONE ||
     extra->patype == PARTITIONWISE_AGGREGATE_FULL);


 fpinfo->outerrel = input_rel;





 fpinfo->table = ifpinfo->table;
 fpinfo->server = ifpinfo->server;
 fpinfo->user = ifpinfo->user;
 merge_fdw_options(fpinfo, ifpinfo, ((void*)0));







 if (!foreign_grouping_ok(root, grouped_rel, extra->havingQual))
  return;
 fpinfo->local_conds_sel = clauselist_selectivity(root,
              fpinfo->local_conds,
              0,
              JOIN_INNER,
              ((void*)0));

 cost_qual_eval(&fpinfo->local_conds_cost, fpinfo->local_conds, root);


 estimate_path_cost_size(root, grouped_rel, NIL, NIL, ((void*)0),
       &rows, &width, &startup_cost, &total_cost);


 fpinfo->rows = rows;
 fpinfo->width = width;
 fpinfo->startup_cost = startup_cost;
 fpinfo->total_cost = total_cost;


 grouppath = create_foreign_upper_path(root,
            grouped_rel,
            grouped_rel->reltarget,
            rows,
            startup_cost,
            total_cost,
            NIL,
            ((void*)0),
            NIL);


 add_path(grouped_rel, (Path *) grouppath);
}
