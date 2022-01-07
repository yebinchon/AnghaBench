
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timelib_sll ;


 double timelib_ts_to_julianday (int ) ;

double timelib_ts_to_j2000(timelib_sll ts)
{
 return timelib_ts_to_julianday(ts) - 2451545;
}
