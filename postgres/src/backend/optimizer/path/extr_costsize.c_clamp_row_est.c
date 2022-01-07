
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double rint (double) ;

double
clamp_row_est(double nrows)
{





 if (nrows <= 1.0)
  nrows = 1.0;
 else
  nrows = rint(nrows);

 return nrows;
}
