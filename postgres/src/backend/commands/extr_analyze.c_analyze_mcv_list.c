
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double sqrt (double) ;

__attribute__((used)) static int
analyze_mcv_list(int *mcv_counts,
     int num_mcv,
     double stadistinct,
     double stanullfrac,
     int samplerows,
     double totalrows)
{
 double ndistinct_table;
 double sumcount;
 int i;





 if (samplerows == totalrows || totalrows <= 1.0)
  return num_mcv;


 ndistinct_table = stadistinct;
 if (ndistinct_table < 0)
  ndistinct_table = -ndistinct_table * totalrows;
 sumcount = 0.0;
 for (i = 0; i < num_mcv - 1; i++)
  sumcount += mcv_counts[i];

 while (num_mcv > 0)
 {
  double selec,
     otherdistinct,
     N,
     n,
     K,
     variance,
     stddev;





  selec = 1.0 - sumcount / samplerows - stanullfrac;
  if (selec < 0.0)
   selec = 0.0;
  if (selec > 1.0)
   selec = 1.0;
  otherdistinct = ndistinct_table - (num_mcv - 1);
  if (otherdistinct > 1)
   selec /= otherdistinct;
  N = totalrows;
  n = samplerows;
  K = N * mcv_counts[num_mcv - 1] / n;
  variance = n * K * (N - K) * (N - n) / (N * N * (N - 1));
  stddev = sqrt(variance);

  if (mcv_counts[num_mcv - 1] > selec * samplerows + 2 * stddev + 0.5)
  {





   break;
  }
  else
  {

   num_mcv--;
   if (num_mcv == 0)
    break;
   sumcount -= mcv_counts[num_mcv - 1];
  }
 }
 return num_mcv;
}
