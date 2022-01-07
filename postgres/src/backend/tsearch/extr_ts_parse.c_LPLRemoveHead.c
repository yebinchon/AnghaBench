
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * tail; TYPE_1__* head; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ ParsedLex ;
typedef TYPE_2__ ListParsedLex ;



__attribute__((used)) static ParsedLex *
LPLRemoveHead(ListParsedLex *list)
{
 ParsedLex *res = list->head;

 if (list->head)
  list->head = list->head->next;

 if (list->head == ((void*)0))
  list->tail = ((void*)0);

 return res;
}
