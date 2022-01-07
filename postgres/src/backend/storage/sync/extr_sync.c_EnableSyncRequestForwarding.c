
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 scalar_t__ NIL ;
 int ProcessSyncRequests () ;
 int hash_destroy (int *) ;
 int * pendingOps ;
 scalar_t__ pendingUnlinks ;

void
EnableSyncRequestForwarding(void)
{

 if (pendingOps)
 {
  ProcessSyncRequests();
  hash_destroy(pendingOps);
 }
 pendingOps = ((void*)0);





 Assert(pendingUnlinks == NIL);
}
