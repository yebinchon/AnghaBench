
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kickfd ;
 int wait_for_notify (int ) ;

void wait_for_kick(void)
{
 wait_for_notify(kickfd);
}
