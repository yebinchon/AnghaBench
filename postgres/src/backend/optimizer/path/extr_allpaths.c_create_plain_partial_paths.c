
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pages; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int add_partial_path (TYPE_1__*,int ) ;
 int compute_parallel_worker (TYPE_1__*,int ,int,int ) ;
 int create_seqscan_path (int *,TYPE_1__*,int *,int) ;
 int max_parallel_workers_per_gather ;

__attribute__((used)) static void
create_plain_partial_paths(PlannerInfo *root, RelOptInfo *rel)
{
 int parallel_workers;

 parallel_workers = compute_parallel_worker(rel, rel->pages, -1,
              max_parallel_workers_per_gather);


 if (parallel_workers <= 0)
  return;


 add_partial_path(rel, create_seqscan_path(root, rel, ((void*)0), parallel_workers));
}
