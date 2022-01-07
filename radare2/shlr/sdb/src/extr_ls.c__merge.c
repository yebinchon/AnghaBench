
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* n; struct TYPE_5__* p; int data; } ;
typedef TYPE_1__ SdbListIter ;
typedef scalar_t__ (* SdbListComparator ) (int ,int ) ;



__attribute__((used)) static SdbListIter *_merge(SdbListIter *first, SdbListIter *second, SdbListComparator cmp) {
 SdbListIter *next = ((void*)0), *result = ((void*)0), *head = ((void*)0);
 while (first || second) {
  if (!second) {
   next = first;
   first = first->n;
  } else if (!first) {
   next = second;
   second = second->n;
  } else if (cmp (first->data, second->data) < 0) {
   next = first;
   first = first->n;
  } else {
   next = second;
   second = second->n;
  }
  if (!head) {
   result = next;
   head = result;
   head->p = ((void*)0);
  } else {
   result->n = next;
   next->p = result;
   result = result->n;
  }
 }
 head->p = ((void*)0);
 next->n = ((void*)0);
 return head;
}
