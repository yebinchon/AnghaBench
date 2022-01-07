
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* data; struct TYPE_3__* n; } ;
typedef TYPE_1__ SdbListIter ;
typedef scalar_t__ (* SdbListComparator ) (void*,void*) ;



__attribute__((used)) static void ls_insertion_sort_iter(SdbListIter *iter, SdbListComparator cmp) {
 SdbListIter *it, *it2;
 for (it = iter; it && it->data; it = it->n) {
  for (it2 = it->n; it2 && it2->data; it2 = it2->n) {
   if (cmp (it->data, it2->data) > 0) {
    void *t = it->data;
    it->data = it2->data;
    it2->data = t;
   }
  }
 }
}
