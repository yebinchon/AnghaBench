
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RegisteredSnapshots ;
 scalar_t__ pairingheap_is_empty (int *) ;
 scalar_t__ pairingheap_is_singular (int *) ;

bool
ThereAreNoPriorRegisteredSnapshots(void)
{
 if (pairingheap_is_empty(&RegisteredSnapshots) ||
  pairingheap_is_singular(&RegisteredSnapshots))
  return 1;

 return 0;
}
