
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int (* freefn ) (scalar_t__) ;} ;
struct TYPE_6__ {struct TYPE_6__* forward; scalar_t__ data; } ;
typedef TYPE_1__ RSkipListNode ;
typedef TYPE_2__ RSkipList ;


 int free (TYPE_1__*) ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void r_skiplist_node_free (RSkipList *list, RSkipListNode *node) {
 if (node) {
  if (list->freefn && node->data) {
   list->freefn (node->data);
  }
  free (node->forward);
  free (node);
 }
}
