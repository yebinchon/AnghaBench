
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cur_sort; int xrefsCol; int refsCol; int mainCol; } ;
typedef TYPE_1__ RCoreVisualViewGraph ;


 scalar_t__ SORT_ADDRESS ;
 scalar_t__ SORT_NAME ;
 int __seek_cursor (TYPE_1__*) ;
 int __sort (TYPE_1__*,int ) ;
 int r_return_if_fail (TYPE_1__*) ;

__attribute__((used)) static void __toggleSort (RCoreVisualViewGraph *status) {
 r_return_if_fail (status);
 status->cur_sort = (status->cur_sort == SORT_ADDRESS)? SORT_NAME: SORT_ADDRESS;
 __sort (status, status->mainCol);
 __sort (status, status->refsCol);
 __sort (status, status->xrefsCol);
 __seek_cursor (status);
}
