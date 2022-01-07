
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lateral_relids; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;


 int add_partial_path (TYPE_1__*,int *) ;
 double compute_bitmap_pages (int *,TYPE_1__*,int *,double,int *,int *) ;
 int compute_parallel_worker (TYPE_1__*,double,int,int ) ;
 scalar_t__ create_bitmap_heap_path (int *,TYPE_1__*,int *,int ,double,int) ;
 int max_parallel_workers_per_gather ;

void
create_partial_bitmap_paths(PlannerInfo *root, RelOptInfo *rel,
       Path *bitmapqual)
{
 int parallel_workers;
 double pages_fetched;


 pages_fetched = compute_bitmap_pages(root, rel, bitmapqual, 1.0,
           ((void*)0), ((void*)0));

 parallel_workers = compute_parallel_worker(rel, pages_fetched, -1,
              max_parallel_workers_per_gather);

 if (parallel_workers <= 0)
  return;

 add_partial_path(rel, (Path *) create_bitmap_heap_path(root, rel,
                 bitmapqual, rel->lateral_relids, 1.0, parallel_workers));
}
