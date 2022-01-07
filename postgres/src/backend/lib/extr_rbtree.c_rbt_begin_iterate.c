
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ root; } ;
struct TYPE_5__ {int is_over; int iterate; int * last_visited; TYPE_2__* rbt; } ;
typedef TYPE_1__ RBTreeIterator ;
typedef TYPE_2__ RBTree ;
typedef int RBTOrderControl ;


 int ERROR ;

 scalar_t__ RBTNIL ;

 int elog (int ,char*,int) ;
 int rbt_left_right_iterator ;
 int rbt_right_left_iterator ;

void
rbt_begin_iterate(RBTree *rbt, RBTOrderControl ctrl, RBTreeIterator *iter)
{

 iter->rbt = rbt;
 iter->last_visited = ((void*)0);
 iter->is_over = (rbt->root == RBTNIL);

 switch (ctrl)
 {
  case 129:
   iter->iterate = rbt_left_right_iterator;
   break;
  case 128:
   iter->iterate = rbt_right_left_iterator;
   break;
  default:
   elog(ERROR, "unrecognized rbtree iteration order: %d", ctrl);
 }
}
