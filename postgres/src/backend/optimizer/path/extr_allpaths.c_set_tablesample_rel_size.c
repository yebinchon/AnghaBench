
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int (* SampleScanGetSampleSize ) (int *,TYPE_3__*,int ,int *,double*) ;} ;
typedef TYPE_1__ TsmRoutine ;
struct TYPE_12__ {int args; int tsmhandler; } ;
typedef TYPE_2__ TableSampleClause ;
struct TYPE_14__ {TYPE_2__* tablesample; } ;
struct TYPE_13__ {double tuples; int pages; } ;
typedef TYPE_3__ RelOptInfo ;
typedef TYPE_4__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int BlockNumber ;


 TYPE_1__* GetTsmRoutine (int ) ;
 int check_index_predicates (int *,TYPE_3__*) ;
 int set_baserel_size_estimates (int *,TYPE_3__*) ;
 int stub1 (int *,TYPE_3__*,int ,int *,double*) ;

__attribute__((used)) static void
set_tablesample_rel_size(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
 TableSampleClause *tsc = rte->tablesample;
 TsmRoutine *tsm;
 BlockNumber pages;
 double tuples;





 check_index_predicates(root, rel);






 tsm = GetTsmRoutine(tsc->tsmhandler);
 tsm->SampleScanGetSampleSize(root, rel, tsc->args,
         &pages, &tuples);







 rel->pages = pages;
 rel->tuples = tuples;


 set_baserel_size_estimates(root, rel);
}
