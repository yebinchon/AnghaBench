
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ idx; } ;
typedef TYPE_1__ phpdbg_btree_result ;
struct TYPE_7__ {scalar_t__ cur; scalar_t__ end; int tree; } ;
typedef TYPE_2__ phpdbg_btree_position ;


 TYPE_1__* phpdbg_btree_find_closest (int ,scalar_t__) ;

phpdbg_btree_result *phpdbg_btree_next(phpdbg_btree_position *pos) {
 phpdbg_btree_result *result = phpdbg_btree_find_closest(pos->tree, pos->cur);

 if (result == ((void*)0) || result->idx < pos->end) {
  return ((void*)0);
 }

 pos->cur = result->idx - 1;

 return result;
}
