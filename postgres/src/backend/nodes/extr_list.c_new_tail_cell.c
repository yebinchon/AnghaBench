
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; scalar_t__ max_length; } ;
typedef TYPE_1__ List ;


 int enlarge_list (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
new_tail_cell(List *list)
{

 if (list->length >= list->max_length)
  enlarge_list(list, list->length + 1);
 list->length++;
}
