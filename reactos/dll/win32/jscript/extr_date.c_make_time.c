
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int MS_PER_HOUR ;
 int MS_PER_MINUTE ;

__attribute__((used)) static inline DOUBLE make_time(DOUBLE hour, DOUBLE min, DOUBLE sec, DOUBLE ms)
{
    return hour*MS_PER_HOUR + min*MS_PER_MINUTE + sec*1000 + ms;
}
