
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; } ;
typedef int GISTSearchItem ;
typedef TYPE_1__* GISTScanOpaque ;


 int pairingheap_is_empty (int ) ;
 scalar_t__ pairingheap_remove_first (int ) ;

__attribute__((used)) static GISTSearchItem *
getNextGISTSearchItem(GISTScanOpaque so)
{
 GISTSearchItem *item;

 if (!pairingheap_is_empty(so->queue))
 {
  item = (GISTSearchItem *) pairingheap_remove_first(so->queue);
 }
 else
 {

  item = ((void*)0);
 }


 return item;
}
