
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int USECS_PER_MINUTE ;

__attribute__((used)) static TimestampTz
AlignTimestampToMinuteBoundary(TimestampTz ts)
{
 TimestampTz retval = ts + (USECS_PER_MINUTE - 1);

 return retval - (retval % USECS_PER_MINUTE);
}
