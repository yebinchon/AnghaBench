
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; } ;
typedef int SdbListComparator ;
typedef TYPE_1__ SdbList ;


 int ls_insertion_sort_iter (int ,int ) ;

__attribute__((used)) static void ls_insertion_sort(SdbList *list, SdbListComparator cmp) {
 ls_insertion_sort_iter (list->head, cmp);
}
