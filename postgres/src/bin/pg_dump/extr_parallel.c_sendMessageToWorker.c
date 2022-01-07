
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {int pipeWrite; } ;
typedef TYPE_2__ ParallelState ;


 int fatal (char*) ;
 int pipewrite (int ,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
sendMessageToWorker(ParallelState *pstate, int worker, const char *str)
{
 int len = strlen(str) + 1;

 if (pipewrite(pstate->parallelSlot[worker].pipeWrite, str, len) != len)
 {
  fatal("could not write to the communication channel: %m");
 }
}
