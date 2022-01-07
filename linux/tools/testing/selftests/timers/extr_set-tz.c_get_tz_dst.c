
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tz ;
struct timezone {int tz_dsttime; } ;
struct timeval {int dummy; } ;


 int gettimeofday (struct timeval*,struct timezone*) ;
 int memset (struct timezone*,int ,int) ;

int get_tz_dst(void)
{
 struct timezone tz;
 struct timeval tv;

 memset(&tz, 0, sizeof(tz));
 gettimeofday(&tv, &tz);
 return tz.tz_dsttime;
}
