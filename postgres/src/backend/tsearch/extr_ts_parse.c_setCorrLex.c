
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * tail; TYPE_2__* head; } ;
struct TYPE_9__ {TYPE_1__ waste; } ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ ParsedLex ;
typedef TYPE_3__ LexizeData ;


 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
setCorrLex(LexizeData *ld, ParsedLex **correspondLexem)
{
 if (correspondLexem)
 {
  *correspondLexem = ld->waste.head;
 }
 else
 {
  ParsedLex *tmp,
       *ptr = ld->waste.head;

  while (ptr)
  {
   tmp = ptr->next;
   pfree(ptr);
   ptr = tmp;
  }
 }
 ld->waste.head = ld->waste.tail = ((void*)0);
}
