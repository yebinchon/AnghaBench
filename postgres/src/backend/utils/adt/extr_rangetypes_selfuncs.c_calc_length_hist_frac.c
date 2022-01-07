
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Assert (int) ;
 double DatumGetFloat8 (int ) ;
 double get_len_position (double,double,double) ;
 scalar_t__ isinf (double) ;
 int length_hist_bsearch (int *,int,double,int) ;

__attribute__((used)) static double
calc_length_hist_frac(Datum *length_hist_values, int length_hist_nvalues,
       double length1, double length2, bool equal)
{
 double frac;
 double A,
    B,
    PA,
    PB;
 double pos;
 int i;
 double area;

 Assert(length2 >= length1);

 if (length2 < 0.0)
  return 0.0;


 if (isinf(length2) && equal)
  return 1.0;
 i = length_hist_bsearch(length_hist_values, length_hist_nvalues, length1, equal);
 if (i >= length_hist_nvalues - 1)
  return 1.0;

 if (i < 0)
 {
  i = 0;
  pos = 0.0;
 }
 else
 {

  pos = get_len_position(length1,
          DatumGetFloat8(length_hist_values[i]),
          DatumGetFloat8(length_hist_values[i + 1]));
 }
 PB = (((double) i) + pos) / (double) (length_hist_nvalues - 1);
 B = length1;






 if (length2 == length1)
  return PB;






 area = 0.0;
 for (; i < length_hist_nvalues - 1; i++)
 {
  double bin_upper = DatumGetFloat8(length_hist_values[i + 1]);


  if (!(bin_upper < length2 || (equal && bin_upper <= length2)))
   break;


  A = B;
  PA = PB;

  B = bin_upper;
  PB = (double) i / (double) (length_hist_nvalues - 1);







  if (PA > 0 || PB > 0)
   area += 0.5 * (PB + PA) * (B - A);
 }


 A = B;
 PA = PB;

 B = length2;
 if (i >= length_hist_nvalues - 1)
  pos = 0.0;
 else
 {
  if (DatumGetFloat8(length_hist_values[i]) == DatumGetFloat8(length_hist_values[i + 1]))
   pos = 0.0;
  else
   pos = get_len_position(length2, DatumGetFloat8(length_hist_values[i]), DatumGetFloat8(length_hist_values[i + 1]));
 }
 PB = (((double) i) + pos) / (double) (length_hist_nvalues - 1);

 if (PA > 0 || PB > 0)
  area += 0.5 * (PB + PA) * (B - A);
 if (isinf(area) && isinf(length2))
  frac = 0.5;
 else
  frac = area / (length2 - length1);

 return frac;
}
