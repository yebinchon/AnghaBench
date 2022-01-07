
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int numeric ;


 scalar_t__ numericvar_to_double (int *,double*) ;

int
PGTYPESnumeric_to_double(numeric *nv, double *dp)
{
 double tmp;

 if (numericvar_to_double(nv, &tmp) != 0)
  return -1;
 *dp = tmp;
 return 0;
}
