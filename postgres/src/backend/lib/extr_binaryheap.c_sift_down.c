
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bh_size; scalar_t__ (* bh_compare ) (int ,int ,int ) ;int bh_arg; int * bh_nodes; } ;
typedef TYPE_1__ binaryheap ;


 int left_offset (int) ;
 int right_offset (int) ;
 scalar_t__ stub1 (int ,int ,int ) ;
 scalar_t__ stub2 (int ,int ,int ) ;
 scalar_t__ stub3 (int ,int ,int ) ;
 int swap_nodes (TYPE_1__*,int,int) ;

__attribute__((used)) static void
sift_down(binaryheap *heap, int node_off)
{
 while (1)
 {
  int left_off = left_offset(node_off);
  int right_off = right_offset(node_off);
  int swap_off = 0;


  if (left_off < heap->bh_size &&
   heap->bh_compare(heap->bh_nodes[node_off],
        heap->bh_nodes[left_off],
        heap->bh_arg) < 0)
   swap_off = left_off;


  if (right_off < heap->bh_size &&
   heap->bh_compare(heap->bh_nodes[node_off],
        heap->bh_nodes[right_off],
        heap->bh_arg) < 0)
  {

   if (!swap_off ||
    heap->bh_compare(heap->bh_nodes[left_off],
         heap->bh_nodes[right_off],
         heap->bh_arg) < 0)
    swap_off = right_off;
  }





  if (!swap_off)
   break;





  swap_nodes(heap, swap_off, node_off);
  node_off = swap_off;
 }
}
