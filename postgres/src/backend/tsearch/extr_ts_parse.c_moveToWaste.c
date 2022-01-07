
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* head; } ;
struct TYPE_9__ {int curSub; TYPE_1__ towork; } ;
struct TYPE_8__ {int next; } ;
typedef TYPE_2__ ParsedLex ;
typedef TYPE_3__ LexizeData ;


 int RemoveHead (TYPE_3__*) ;

__attribute__((used)) static void
moveToWaste(LexizeData *ld, ParsedLex *stop)
{
 bool go = 1;

 while (ld->towork.head && go)
 {
  if (ld->towork.head == stop)
  {
   ld->curSub = stop->next;
   go = 0;
  }
  RemoveHead(ld);
 }
}
