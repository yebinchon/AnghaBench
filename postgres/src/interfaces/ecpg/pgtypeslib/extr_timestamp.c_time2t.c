
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const int64 ;
typedef scalar_t__ fsec_t ;


 int const MINS_PER_HOUR ;
 int const SECS_PER_MINUTE ;
 int const USECS_PER_SEC ;

__attribute__((used)) static int64
time2t(const int hour, const int min, const int sec, const fsec_t fsec)
{
 return (((((hour * MINS_PER_HOUR) + min) * SECS_PER_MINUTE) + sec) * USECS_PER_SEC) + fsec;
}
