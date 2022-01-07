
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scanQueue; } ;
typedef int SpGistSearchItem ;
typedef TYPE_1__* SpGistScanOpaque ;


 scalar_t__ pairingheap_is_empty (int ) ;
 scalar_t__ pairingheap_remove_first (int ) ;

__attribute__((used)) static SpGistSearchItem *
spgGetNextQueueItem(SpGistScanOpaque so)
{
 if (pairingheap_is_empty(so->scanQueue))
  return ((void*)0);


 return (SpGistSearchItem *) pairingheap_remove_first(so->scanQueue);
}
