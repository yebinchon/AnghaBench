
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_generic {TYPE_1__* stack; int scontext; int source; } ;
struct TYPE_2__ {scalar_t__ nest_level; void* state; int prior; int scontext; int source; struct TYPE_2__* prev; int masked; int masked_scontext; } ;
typedef TYPE_1__ GucStack ;
typedef int GucAction ;


 int Assert (int) ;
 scalar_t__ GUCNestLevel ;



 void* GUC_LOCAL ;
 void* GUC_SAVE ;
 void* GUC_SET ;
 void* GUC_SET_LOCAL ;
 scalar_t__ MemoryContextAllocZero (int ,int) ;
 int TopTransactionContext ;
 int discard_stack_value (struct config_generic*,int *) ;
 int guc_dirty ;
 int set_stack_value (struct config_generic*,int *) ;

__attribute__((used)) static void
push_old_value(struct config_generic *gconf, GucAction action)
{
 GucStack *stack;


 if (GUCNestLevel == 0)
  return;


 stack = gconf->stack;
 if (stack && stack->nest_level >= GUCNestLevel)
 {

  Assert(stack->nest_level == GUCNestLevel);
  switch (action)
  {
   case 128:

    if (stack->state == GUC_SET_LOCAL)
    {

     discard_stack_value(gconf, &stack->masked);
    }
    stack->state = GUC_SET;
    break;
   case 130:
    if (stack->state == GUC_SET)
    {

     stack->masked_scontext = gconf->scontext;
     set_stack_value(gconf, &stack->masked);
     stack->state = GUC_SET_LOCAL;
    }

    break;
   case 129:

    Assert(stack->state == GUC_SAVE);
    break;
  }
  Assert(guc_dirty);
  return;
 }






 stack = (GucStack *) MemoryContextAllocZero(TopTransactionContext,
            sizeof(GucStack));

 stack->prev = gconf->stack;
 stack->nest_level = GUCNestLevel;
 switch (action)
 {
  case 128:
   stack->state = GUC_SET;
   break;
  case 130:
   stack->state = GUC_LOCAL;
   break;
  case 129:
   stack->state = GUC_SAVE;
   break;
 }
 stack->source = gconf->source;
 stack->scontext = gconf->scontext;
 set_stack_value(gconf, &stack->prior);

 gconf->stack = stack;


 guc_dirty = 1;
}
