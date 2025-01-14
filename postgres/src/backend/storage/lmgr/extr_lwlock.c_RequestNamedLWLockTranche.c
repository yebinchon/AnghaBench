
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_lwlocks; int tranche_name; } ;
typedef TYPE_1__ NamedLWLockTrancheRequest ;


 int Assert (int) ;
 scalar_t__ IsUnderPostmaster ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 scalar_t__ NAMEDATALEN ;
 TYPE_1__* NamedLWLockTrancheRequestArray ;
 int NamedLWLockTrancheRequests ;
 int NamedLWLockTrancheRequestsAllocated ;
 int StrNCpy (int ,char const*,scalar_t__) ;
 int TopMemoryContext ;
 int lock_named_request_allowed ;
 scalar_t__ repalloc (TYPE_1__*,int) ;
 scalar_t__ strlen (char const*) ;

void
RequestNamedLWLockTranche(const char *tranche_name, int num_lwlocks)
{
 NamedLWLockTrancheRequest *request;

 if (IsUnderPostmaster || !lock_named_request_allowed)
  return;

 if (NamedLWLockTrancheRequestArray == ((void*)0))
 {
  NamedLWLockTrancheRequestsAllocated = 16;
  NamedLWLockTrancheRequestArray = (NamedLWLockTrancheRequest *)
   MemoryContextAlloc(TopMemoryContext,
          NamedLWLockTrancheRequestsAllocated
          * sizeof(NamedLWLockTrancheRequest));
 }

 if (NamedLWLockTrancheRequests >= NamedLWLockTrancheRequestsAllocated)
 {
  int i = NamedLWLockTrancheRequestsAllocated;

  while (i <= NamedLWLockTrancheRequests)
   i *= 2;

  NamedLWLockTrancheRequestArray = (NamedLWLockTrancheRequest *)
   repalloc(NamedLWLockTrancheRequestArray,
      i * sizeof(NamedLWLockTrancheRequest));
  NamedLWLockTrancheRequestsAllocated = i;
 }

 request = &NamedLWLockTrancheRequestArray[NamedLWLockTrancheRequests];
 Assert(strlen(tranche_name) + 1 < NAMEDATALEN);
 StrNCpy(request->tranche_name, tranche_name, NAMEDATALEN);
 request->num_lwlocks = num_lwlocks;
 NamedLWLockTrancheRequests++;
}
