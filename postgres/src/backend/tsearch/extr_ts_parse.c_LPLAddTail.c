
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tail; TYPE_1__* head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ ParsedLex ;
typedef TYPE_2__ ListParsedLex ;



__attribute__((used)) static void
LPLAddTail(ListParsedLex *list, ParsedLex *newpl)
{
 if (list->tail)
 {
  list->tail->next = newpl;
  list->tail = newpl;
 }
 else
  list->head = list->tail = newpl;
 newpl->next = ((void*)0);
}
