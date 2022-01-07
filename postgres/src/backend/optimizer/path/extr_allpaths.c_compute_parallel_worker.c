
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rel_parallel_workers; scalar_t__ reloptkind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef double BlockNumber ;


 int INT_MAX ;
 int Max (double,int) ;
 int Min (int,int) ;
 scalar_t__ RELOPT_BASEREL ;
 double min_parallel_index_scan_size ;
 double min_parallel_table_scan_size ;

int
compute_parallel_worker(RelOptInfo *rel, double heap_pages, double index_pages,
      int max_workers)
{
 int parallel_workers = 0;





 if (rel->rel_parallel_workers != -1)
  parallel_workers = rel->rel_parallel_workers;
 else
 {
  if (rel->reloptkind == RELOPT_BASEREL &&
   ((heap_pages >= 0 && heap_pages < min_parallel_table_scan_size) ||
    (index_pages >= 0 && index_pages < min_parallel_index_scan_size)))
   return 0;

  if (heap_pages >= 0)
  {
   int heap_parallel_threshold;
   int heap_parallel_workers = 1;
   heap_parallel_threshold = Max(min_parallel_table_scan_size, 1);
   while (heap_pages >= (BlockNumber) (heap_parallel_threshold * 3))
   {
    heap_parallel_workers++;
    heap_parallel_threshold *= 3;
    if (heap_parallel_threshold > INT_MAX / 3)
     break;
   }

   parallel_workers = heap_parallel_workers;
  }

  if (index_pages >= 0)
  {
   int index_parallel_workers = 1;
   int index_parallel_threshold;


   index_parallel_threshold = Max(min_parallel_index_scan_size, 1);
   while (index_pages >= (BlockNumber) (index_parallel_threshold * 3))
   {
    index_parallel_workers++;
    index_parallel_threshold *= 3;
    if (index_parallel_threshold > INT_MAX / 3)
     break;
   }

   if (parallel_workers > 0)
    parallel_workers = Min(parallel_workers, index_parallel_workers);
   else
    parallel_workers = index_parallel_workers;
  }
 }


 parallel_workers = Min(parallel_workers, max_workers);

 return parallel_workers;
}
