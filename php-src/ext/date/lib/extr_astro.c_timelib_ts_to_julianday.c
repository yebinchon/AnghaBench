
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timelib_sll ;



double timelib_ts_to_julianday(timelib_sll ts)
{
 double tmp;

 tmp = (double) ts;
 tmp /= (double) 86400;
 tmp += (double) 2440587.5;

 return tmp;
}
