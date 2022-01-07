
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* node; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ RegisNode ;
typedef TYPE_2__ Regis ;


 int pfree (TYPE_1__*) ;

void
RS_free(Regis *r)
{
 RegisNode *ptr = r->node,
      *tmp;

 while (ptr)
 {
  tmp = ptr->next;
  pfree(ptr);
  ptr = tmp;
 }

 r->node = ((void*)0);
}
