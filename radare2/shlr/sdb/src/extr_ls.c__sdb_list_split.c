
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* n; } ;
typedef TYPE_1__ SdbListIter ;



__attribute__((used)) static SdbListIter * _sdb_list_split(SdbListIter *head) {
 SdbListIter *tmp;
 SdbListIter *fast;
 SdbListIter *slow;
 if (!head || !head->n) {
  return head;
 }
 slow = head;
 fast = head;
 while (fast && fast->n && fast->n->n) {
  fast = fast->n->n;
  slow = slow->n;
 }
 tmp = slow->n;
 slow->n = ((void*)0);
 return tmp;
}
