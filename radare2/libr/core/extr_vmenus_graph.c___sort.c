
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cur_sort; } ;
struct TYPE_6__ {int sorted; } ;
typedef int RListComparator ;
typedef TYPE_1__ RList ;
typedef TYPE_2__ RCoreVisualViewGraph ;


 scalar_t__ SORT_ADDRESS ;
 int cmpaddr ;
 int cmpname ;
 int r_list_sort (TYPE_1__*,int ) ;
 int r_return_if_fail (int) ;

__attribute__((used)) static void __sort (RCoreVisualViewGraph *status, RList *list) {
 r_return_if_fail (status && list);
 RListComparator cmp = (status->cur_sort == SORT_ADDRESS)? cmpaddr: cmpname;
 list->sorted = 0;
 r_list_sort (list, cmp);
}
