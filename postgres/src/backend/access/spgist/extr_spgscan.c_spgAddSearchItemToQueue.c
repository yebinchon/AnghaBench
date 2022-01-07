
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int scanQueue; } ;
struct TYPE_5__ {int phNode; } ;
typedef TYPE_1__ SpGistSearchItem ;
typedef TYPE_2__* SpGistScanOpaque ;


 int pairingheap_add (int ,int *) ;

__attribute__((used)) static void
spgAddSearchItemToQueue(SpGistScanOpaque so, SpGistSearchItem *item)
{
 pairingheap_add(so->scanQueue, &item->phNode);
}
