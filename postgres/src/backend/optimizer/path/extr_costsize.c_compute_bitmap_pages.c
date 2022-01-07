
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double tuples; int pages; } ;
typedef double Selectivity ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Path ;
typedef int Cost ;


 double Max (int ,double) ;
 double Min (double,int) ;
 double ceil (double) ;
 double clamp_row_est (double) ;
 int cost_bitmap_tree_node (int *,int *,double*) ;
 int get_indexpath_pages (int *) ;
 double index_pages_fetched (double,int,int ,int *) ;
 long tbm_calculate_entries (long) ;
 long work_mem ;

double
compute_bitmap_pages(PlannerInfo *root, RelOptInfo *baserel, Path *bitmapqual,
      int loop_count, Cost *cost, double *tuple)
{
 Cost indexTotalCost;
 Selectivity indexSelectivity;
 double T;
 double pages_fetched;
 double tuples_fetched;
 double heap_pages;
 long maxentries;





 cost_bitmap_tree_node(bitmapqual, &indexTotalCost, &indexSelectivity);




 tuples_fetched = clamp_row_est(indexSelectivity * baserel->tuples);

 T = (baserel->pages > 1) ? (double) baserel->pages : 1.0;






 pages_fetched = (2.0 * T * tuples_fetched) / (2.0 * T + tuples_fetched);
 heap_pages = Min(pages_fetched, baserel->pages);
 maxentries = tbm_calculate_entries(work_mem * 1024L);

 if (loop_count > 1)
 {






  pages_fetched = index_pages_fetched(tuples_fetched * loop_count,
           baserel->pages,
           get_indexpath_pages(bitmapqual),
           root);
  pages_fetched /= loop_count;
 }

 if (pages_fetched >= T)
  pages_fetched = T;
 else
  pages_fetched = ceil(pages_fetched);

 if (maxentries < heap_pages)
 {
  double exact_pages;
  double lossy_pages;
  lossy_pages = Max(0, heap_pages - maxentries / 2);
  exact_pages = heap_pages - lossy_pages;
  if (lossy_pages > 0)
   tuples_fetched =
    clamp_row_est(indexSelectivity *
         (exact_pages / heap_pages) * baserel->tuples +
         (lossy_pages / heap_pages) * baserel->tuples);
 }

 if (cost)
  *cost = indexTotalCost;
 if (tuple)
  *tuple = tuples_fetched;

 return pages_fetched;
}
