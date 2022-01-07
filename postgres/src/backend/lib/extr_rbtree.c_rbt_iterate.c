
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * (* iterate ) (TYPE_1__*) ;scalar_t__ is_over; } ;
typedef TYPE_1__ RBTreeIterator ;
typedef int RBTNode ;


 int * stub1 (TYPE_1__*) ;

RBTNode *
rbt_iterate(RBTreeIterator *iter)
{
 if (iter->is_over)
  return ((void*)0);

 return iter->iterate(iter);
}
