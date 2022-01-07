
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lag; int latency; int skipped; int cnt; } ;
typedef TYPE_1__ StatsData ;


 int addToSimpleStats (int *,double) ;
 scalar_t__ throttle_delay ;

__attribute__((used)) static void
accumStats(StatsData *stats, bool skipped, double lat, double lag)
{
 stats->cnt++;

 if (skipped)
 {

  stats->skipped++;
 }
 else
 {
  addToSimpleStats(&stats->latency, lat);


  if (throttle_delay)
   addToSimpleStats(&stats->lag, lag);
 }
}
