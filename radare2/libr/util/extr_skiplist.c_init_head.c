
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__** forward; } ;
typedef TYPE_1__ RSkipListNode ;


 int SKIPLIST_MAX_DEPTH ;

__attribute__((used)) static void init_head (RSkipListNode *head) {
 int i;
 for (i = 0; i <= SKIPLIST_MAX_DEPTH; i++) {
  head->forward[i] = head;
 }
}
