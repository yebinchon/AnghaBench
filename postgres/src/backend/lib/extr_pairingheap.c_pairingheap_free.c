
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pairingheap ;


 int pfree (int *) ;

void
pairingheap_free(pairingheap *heap)
{
 pfree(heap);
}
