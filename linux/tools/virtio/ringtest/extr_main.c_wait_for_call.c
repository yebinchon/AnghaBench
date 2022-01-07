
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callfd ;
 int wait_for_notify (int ) ;

void wait_for_call(void)
{
 wait_for_notify(callfd);
}
