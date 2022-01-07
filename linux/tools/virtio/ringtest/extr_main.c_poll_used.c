
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int busy_wait () ;
 scalar_t__ used_empty () ;

void poll_used(void)
{
 while (used_empty())
  busy_wait();
}
