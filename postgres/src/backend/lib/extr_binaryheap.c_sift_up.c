
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* bh_compare ) (int ,int ,int ) ;int bh_arg; int * bh_nodes; } ;
typedef TYPE_1__ binaryheap ;


 int parent_offset (int) ;
 int stub1 (int ,int ,int ) ;
 int swap_nodes (TYPE_1__*,int,int) ;

__attribute__((used)) static void
sift_up(binaryheap *heap, int node_off)
{
 while (node_off != 0)
 {
  int cmp;
  int parent_off;





  parent_off = parent_offset(node_off);
  cmp = heap->bh_compare(heap->bh_nodes[node_off],
          heap->bh_nodes[parent_off],
          heap->bh_arg);
  if (cmp <= 0)
   break;





  swap_nodes(heap, node_off, parent_off);
  node_off = parent_off;
 }
}
