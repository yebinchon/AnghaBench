
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int timestamp ;
struct TYPE_4__ {int time; int month; } ;
typedef TYPE_1__ interval ;


 int PGTYPEStimestamp_add_interval (int *,TYPE_1__*,int *) ;

int
PGTYPEStimestamp_sub_interval(timestamp * tin, interval * span, timestamp * tout)
{
 interval tspan;

 tspan.month = -span->month;
 tspan.time = -span->time;


 return PGTYPEStimestamp_add_interval(tin, &tspan, tout);
}
