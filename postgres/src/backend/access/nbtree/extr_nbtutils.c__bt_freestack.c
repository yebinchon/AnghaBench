
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bts_parent; } ;
typedef TYPE_1__* BTStack ;


 int pfree (TYPE_1__*) ;

void
_bt_freestack(BTStack stack)
{
 BTStack ostack;

 while (stack != ((void*)0))
 {
  ostack = stack;
  stack = stack->bts_parent;
  pfree(ostack);
 }
}
