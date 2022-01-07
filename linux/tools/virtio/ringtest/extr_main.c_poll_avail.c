
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ avail_empty () ;
 int busy_wait () ;

void poll_avail(void)
{
 while (avail_empty())
  busy_wait();
}
