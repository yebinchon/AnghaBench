
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ (* compare ) (int ,void*) ;int list_level; int size; TYPE_1__* head; } ;
struct TYPE_9__ {struct TYPE_9__** forward; int data; } ;
typedef TYPE_1__ RSkipListNode ;
typedef TYPE_2__ RSkipList ;


 int SKIPLIST_MAX_DEPTH ;
 TYPE_1__* find_insertpoint (TYPE_2__*,void*,TYPE_1__**,int) ;
 int r_skiplist_node_free (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ stub1 (int ,void*) ;

__attribute__((used)) static bool delete_element(RSkipList* list, void* data, bool by_data) {
 int i;
 RSkipListNode *update[SKIPLIST_MAX_DEPTH + 1], *x;


 x = find_insertpoint (list, data, update, by_data);

 if (x == list->head || list->compare(x->data, data) != 0) {
  return 0;
 }



 for (i = 0; i <= list->list_level; i++) {
  if (update[i]->forward[i] != x) {
   break;
  }
  update[i]->forward[i] = x->forward[i];
 }
 r_skiplist_node_free (list, x);


 while ((list->list_level > 0) &&
  (list->head->forward[list->list_level] == list->head)) {
  list->list_level--;
 }
 list->size--;
 return 1;
}
