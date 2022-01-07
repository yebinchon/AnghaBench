
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int TypeCacheEntry ;
typedef int RangeBound ;
typedef int Datum ;


 double calc_length_hist_frac (int *,int,int ,int ,int) ;
 int get_distance (int *,int const*,int const*) ;
 double get_position (int *,int const*,int const*,int const*) ;
 int rbound_bsearch (int *,int const*,int const*,int,int) ;

__attribute__((used)) static double
calc_hist_selectivity_contains(TypeCacheEntry *typcache,
          const RangeBound *lower, const RangeBound *upper,
          const RangeBound *hist_lower, int hist_nvalues,
          Datum *length_hist_values, int length_hist_nvalues)
{
 int i,
    lower_index;
 double bin_width,
    lower_bin_width;
 double sum_frac;
 float8 prev_dist;


 lower_index = rbound_bsearch(typcache, lower, hist_lower, hist_nvalues,
         1);






 if (lower_index >= 0 && lower_index < hist_nvalues - 1)
  lower_bin_width = get_position(typcache, lower, &hist_lower[lower_index],
            &hist_lower[lower_index + 1]);
 else
  lower_bin_width = 0.0;
 prev_dist = get_distance(typcache, lower, upper);
 sum_frac = 0.0;
 bin_width = lower_bin_width;
 for (i = lower_index; i >= 0; i--)
 {
  float8 dist;
  double length_hist_frac;






  dist = get_distance(typcache, &hist_lower[i], upper);





  length_hist_frac =
   1.0 - calc_length_hist_frac(length_hist_values,
          length_hist_nvalues,
          prev_dist, dist, 0);

  sum_frac += length_hist_frac * bin_width / (double) (hist_nvalues - 1);

  bin_width = 1.0;
  prev_dist = dist;
 }

 return sum_frac;
}
