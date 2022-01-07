
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tranche_name; } ;
typedef scalar_t__ Size ;
typedef int NamedLWLockTranche ;
typedef int LWLockPadded ;


 scalar_t__ LWLOCK_PADDED_SIZE ;
 int NUM_FIXED_LWLOCKS ;
 TYPE_1__* NamedLWLockTrancheRequestArray ;
 int NamedLWLockTrancheRequests ;
 scalar_t__ NumLWLocksByNamedTranches () ;
 scalar_t__ add_size (scalar_t__,scalar_t__) ;
 int lock_named_request_allowed ;
 scalar_t__ mul_size (int,int) ;
 scalar_t__ strlen (int ) ;

Size
LWLockShmemSize(void)
{
 Size size;
 int i;
 int numLocks = NUM_FIXED_LWLOCKS;

 numLocks += NumLWLocksByNamedTranches();


 size = mul_size(numLocks, sizeof(LWLockPadded));


 size = add_size(size, sizeof(int) + LWLOCK_PADDED_SIZE);


 size = add_size(size, mul_size(NamedLWLockTrancheRequests, sizeof(NamedLWLockTranche)));


 for (i = 0; i < NamedLWLockTrancheRequests; i++)
  size = add_size(size, strlen(NamedLWLockTrancheRequestArray[i].tranche_name) + 1);


 lock_named_request_allowed = 0;

 return size;
}
