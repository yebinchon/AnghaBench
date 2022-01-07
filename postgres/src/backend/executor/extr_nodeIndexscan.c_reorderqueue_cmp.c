
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pairingheap_node ;
struct TYPE_2__ {int orderbynulls; int orderbyvals; } ;
typedef TYPE_1__ ReorderTuple ;
typedef int IndexScanState ;


 int cmp_orderbyvals (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
reorderqueue_cmp(const pairingheap_node *a, const pairingheap_node *b,
     void *arg)
{
 ReorderTuple *rta = (ReorderTuple *) a;
 ReorderTuple *rtb = (ReorderTuple *) b;
 IndexScanState *node = (IndexScanState *) arg;


 return cmp_orderbyvals(rtb->orderbyvals, rtb->orderbynulls,
         rta->orderbyvals, rta->orderbynulls,
         node);
}
