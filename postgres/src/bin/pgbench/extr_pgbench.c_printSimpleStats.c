
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double count; double sum; double sum2; } ;
typedef TYPE_1__ SimpleStats ;


 int printf (char*,char const*,double) ;
 double sqrt (double) ;

__attribute__((used)) static void
printSimpleStats(const char *prefix, SimpleStats *ss)
{
 if (ss->count > 0)
 {
  double latency = ss->sum / ss->count;
  double stddev = sqrt(ss->sum2 / ss->count - latency * latency);

  printf("%s average = %.3f ms\n", prefix, 0.001 * latency);
  printf("%s stddev = %.3f ms\n", prefix, 0.001 * stddev);
 }
}
