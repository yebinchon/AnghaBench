
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int lag; int latency; scalar_t__ skipped; scalar_t__ cnt; int start_time; } ;
typedef TYPE_1__ StatsData ;


 int initSimpleStats (int *) ;

__attribute__((used)) static void
initStats(StatsData *sd, time_t start_time)
{
 sd->start_time = start_time;
 sd->cnt = 0;
 sd->skipped = 0;
 initSimpleStats(&sd->latency);
 initSimpleStats(&sd->lag);
}
