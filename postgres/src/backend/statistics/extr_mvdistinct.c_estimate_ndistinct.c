
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double floor (double) ;

__attribute__((used)) static double
estimate_ndistinct(double totalrows, int numrows, int d, int f1)
{
 double numer,
    denom,
    ndistinct;

 numer = (double) numrows * (double) d;

 denom = (double) (numrows - f1) +
  (double) f1 * (double) numrows / totalrows;

 ndistinct = numer / denom;


 if (ndistinct < (double) d)
  ndistinct = (double) d;

 if (ndistinct > totalrows)
  ndistinct = totalrows;

 return floor(ndistinct + 0.5);
}
