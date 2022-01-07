
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int interval ;


 int PGTYPEStimestamp_sub (int *,int *,int *) ;

int
dtsub(timestamp * ts1, timestamp * ts2, interval * iv)
{
 return PGTYPEStimestamp_sub(ts1, ts2, iv);
}
