
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;


 int PGTYPEStimestamp_current (int *) ;

void
dtcurrent(timestamp * ts)
{
 PGTYPEStimestamp_current(ts);
}
