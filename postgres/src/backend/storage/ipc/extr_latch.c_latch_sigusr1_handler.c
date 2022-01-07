
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sendSelfPipeByte () ;
 scalar_t__ waiting ;

void
latch_sigusr1_handler(void)
{
 if (waiting)
  sendSelfPipeByte();
}
