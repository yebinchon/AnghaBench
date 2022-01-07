
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int tz_minuteswest; int tz_dsttime; } ;


 int settimeofday (int ,struct timezone*) ;

int set_tz(int min, int dst)
{
 struct timezone tz;

 tz.tz_minuteswest = min;
 tz.tz_dsttime = dst;

 return settimeofday(0, &tz);
}
