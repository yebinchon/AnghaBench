
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int meta; } ;
struct TYPE_4__ {int desc; TYPE_2__** commands; } ;
typedef TYPE_1__ ParsedScript ;
typedef int ConditionalStack ;
typedef TYPE_2__ Command ;


 int ConditionError (int ,int,char*) ;
 int IFSTATE_ELSE_FALSE ;
 int IFSTATE_FALSE ;
 scalar_t__ META_COMMAND ;




 int conditional_stack_create () ;
 int conditional_stack_destroy (int ) ;
 scalar_t__ conditional_stack_empty (int ) ;
 int conditional_stack_peek (int ) ;
 int conditional_stack_poke (int ,int ) ;
 int conditional_stack_pop (int ) ;
 int conditional_stack_push (int ,int ) ;

__attribute__((used)) static void
CheckConditional(ParsedScript ps)
{

 ConditionalStack cs = conditional_stack_create();
 int i;

 for (i = 0; ps.commands[i] != ((void*)0); i++)
 {
  Command *cmd = ps.commands[i];

  if (cmd->type == META_COMMAND)
  {
   switch (cmd->meta)
   {
    case 128:
     conditional_stack_push(cs, IFSTATE_FALSE);
     break;
    case 131:
     if (conditional_stack_empty(cs))
      ConditionError(ps.desc, i + 1, "\\elif without matching \\if");
     if (conditional_stack_peek(cs) == IFSTATE_ELSE_FALSE)
      ConditionError(ps.desc, i + 1, "\\elif after \\else");
     break;
    case 130:
     if (conditional_stack_empty(cs))
      ConditionError(ps.desc, i + 1, "\\else without matching \\if");
     if (conditional_stack_peek(cs) == IFSTATE_ELSE_FALSE)
      ConditionError(ps.desc, i + 1, "\\else after \\else");
     conditional_stack_poke(cs, IFSTATE_ELSE_FALSE);
     break;
    case 129:
     if (!conditional_stack_pop(cs))
      ConditionError(ps.desc, i + 1, "\\endif without matching \\if");
     break;
    default:

     break;
   }
  }
 }
 if (!conditional_stack_empty(cs))
  ConditionError(ps.desc, i + 1, "\\if without matching \\endif");
 conditional_stack_destroy(cs);
}
