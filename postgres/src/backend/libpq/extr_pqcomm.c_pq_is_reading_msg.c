
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PqCommReadingMsg ;

bool
pq_is_reading_msg(void)
{
 return PqCommReadingMsg;
}
