
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int n; } ;
typedef TYPE_1__ SdbListIter ;
typedef int SdbListComparator ;


 TYPE_1__* _merge (TYPE_1__*,TYPE_1__*,int ) ;
 TYPE_1__* _sdb_list_split (TYPE_1__*) ;

__attribute__((used)) static SdbListIter * _merge_sort(SdbListIter *head, SdbListComparator cmp) {
 SdbListIter *second;
 if (!head || !head->n) {
  return head;
 }
 second = _sdb_list_split (head);
 head = _merge_sort (head, cmp);
 second = _merge_sort (second, cmp);
 return _merge (head, second, cmp);
}
