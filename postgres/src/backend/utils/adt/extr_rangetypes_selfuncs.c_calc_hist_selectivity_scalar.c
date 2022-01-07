
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef double Selectivity ;
typedef int RangeBound ;


 scalar_t__ Max (int,int ) ;
 double get_position (int *,int const*,int const*,int const*) ;
 int rbound_bsearch (int *,int const*,int const*,int,int) ;

__attribute__((used)) static double
calc_hist_selectivity_scalar(TypeCacheEntry *typcache, const RangeBound *constbound,
        const RangeBound *hist, int hist_nvalues, bool equal)
{
 Selectivity selec;
 int index;





 index = rbound_bsearch(typcache, constbound, hist, hist_nvalues, equal);
 selec = (Selectivity) (Max(index, 0)) / (Selectivity) (hist_nvalues - 1);


 if (index >= 0 && index < hist_nvalues - 1)
  selec += get_position(typcache, constbound, &hist[index],
         &hist[index + 1]) / (Selectivity) (hist_nvalues - 1);

 return selec;
}
