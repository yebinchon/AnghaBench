
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_lwlocks; int tranche_name; } ;
typedef int LWLockPadded ;


 int ERROR ;
 int * MainLWLockArray ;
 int NUM_FIXED_LWLOCKS ;
 TYPE_1__* NamedLWLockTrancheRequestArray ;
 int NamedLWLockTrancheRequests ;
 int elog (int ,char*) ;
 scalar_t__ strcmp (int ,char const*) ;

LWLockPadded *
GetNamedLWLockTranche(const char *tranche_name)
{
 int lock_pos;
 int i;






 lock_pos = NUM_FIXED_LWLOCKS;
 for (i = 0; i < NamedLWLockTrancheRequests; i++)
 {
  if (strcmp(NamedLWLockTrancheRequestArray[i].tranche_name,
       tranche_name) == 0)
   return &MainLWLockArray[lock_pos];

  lock_pos += NamedLWLockTrancheRequestArray[i].num_lwlocks;
 }

 if (i >= NamedLWLockTrancheRequests)
  elog(ERROR, "requested tranche is not registered");


 return ((void*)0);
}
