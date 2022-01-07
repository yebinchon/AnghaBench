
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_lwlocks; } ;


 TYPE_1__* NamedLWLockTrancheRequestArray ;
 int NamedLWLockTrancheRequests ;

__attribute__((used)) static int
NumLWLocksByNamedTranches(void)
{
 int numLocks = 0;
 int i;

 for (i = 0; i < NamedLWLockTrancheRequests; i++)
  numLocks += NamedLWLockTrancheRequestArray[i].num_lwlocks;

 return numLocks;
}
