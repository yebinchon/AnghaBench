
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_4__ {struct TYPE_4__* next; void* ptr; } ;
typedef TYPE_1__ SimplePtrListCell ;
typedef TYPE_2__ SimplePtrList ;


 scalar_t__ pg_malloc (int) ;

void
simple_ptr_list_append(SimplePtrList *list, void *ptr)
{
 SimplePtrListCell *cell;

 cell = (SimplePtrListCell *) pg_malloc(sizeof(SimplePtrListCell));
 cell->next = ((void*)0);
 cell->ptr = ptr;

 if (list->tail)
  list->tail->next = cell;
 else
  list->head = cell;
 list->tail = cell;
}
