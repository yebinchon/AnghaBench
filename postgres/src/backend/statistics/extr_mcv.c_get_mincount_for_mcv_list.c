
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double
get_mincount_for_mcv_list(int samplerows, double totalrows)
{
 double n = samplerows;
 double N = totalrows;
 double numer,
    denom;

 numer = n * (N - n);
 denom = N - n + 0.04 * n * (N - 1);


 if (denom == 0.0)
  return 0.0;

 return numer / denom;
}
