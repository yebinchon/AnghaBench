
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 double DatumGetFloat8 (int ) ;

__attribute__((used)) static int
length_hist_bsearch(Datum *length_hist_values, int length_hist_nvalues,
     double value, bool equal)
{
 int lower = -1,
    upper = length_hist_nvalues - 1,
    middle;

 while (lower < upper)
 {
  double middleval;

  middle = (lower + upper + 1) / 2;

  middleval = DatumGetFloat8(length_hist_values[middle]);
  if (middleval < value || (equal && middleval <= value))
   lower = middle;
  else
   upper = middle - 1;
 }
 return lower;
}
