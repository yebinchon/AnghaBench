
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double total_table_pages; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int BlockNumber ;


 int Assert (int) ;
 double Max (double,double) ;
 double ceil (double) ;
 scalar_t__ effective_cache_size ;

double
index_pages_fetched(double tuples_fetched, BlockNumber pages,
     double index_pages, PlannerInfo *root)
{
 double pages_fetched;
 double total_pages;
 double T,
    b;


 T = (pages > 1) ? (double) pages : 1.0;


 total_pages = root->total_table_pages + index_pages;
 total_pages = Max(total_pages, 1.0);
 Assert(T <= total_pages);


 b = (double) effective_cache_size * T / total_pages;


 if (b <= 1.0)
  b = 1.0;
 else
  b = ceil(b);


 if (T <= b)
 {
  pages_fetched =
   (2.0 * T * tuples_fetched) / (2.0 * T + tuples_fetched);
  if (pages_fetched >= T)
   pages_fetched = T;
  else
   pages_fetched = ceil(pages_fetched);
 }
 else
 {
  double lim;

  lim = (2.0 * T * b) / (2.0 * T - b);
  if (tuples_fetched <= lim)
  {
   pages_fetched =
    (2.0 * T * tuples_fetched) / (2.0 * T + tuples_fetched);
  }
  else
  {
   pages_fetched =
    b + (tuples_fetched - lim) * (T - b) / T;
  }
  pages_fetched = ceil(pages_fetched);
 }
 return pages_fetched;
}
