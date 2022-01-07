
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int reset_source; int reset_scontext; } ;
struct config_string {char const* reset_val; TYPE_5__ gen; } ;
struct config_generic {char* name; TYPE_6__* stack; } ;
struct TYPE_10__ {char const* stringval; } ;
struct TYPE_11__ {TYPE_3__ val; } ;
struct TYPE_8__ {char* stringval; } ;
struct TYPE_9__ {TYPE_1__ val; } ;
struct TYPE_13__ {int state; int nest_level; int masked_scontext; TYPE_4__ masked; int source; int scontext; TYPE_2__ prior; struct TYPE_13__* prev; } ;
typedef TYPE_6__ GucStack ;
typedef int GucSource ;
typedef int GucContext ;


 int GUC_ACTION_LOCAL ;
 int GUC_ACTION_SAVE ;
 int GUC_ACTION_SET ;




 int PGC_S_SESSION ;
 int WARNING ;
 int set_config_option (char const*,char const*,int ,int ,int ,int,int ,int) ;

__attribute__((used)) static void
reapply_stacked_values(struct config_generic *variable,
        struct config_string *pHolder,
        GucStack *stack,
        const char *curvalue,
        GucContext curscontext, GucSource cursource)
{
 const char *name = variable->name;
 GucStack *oldvarstack = variable->stack;

 if (stack != ((void*)0))
 {

  reapply_stacked_values(variable, pHolder, stack->prev,
          stack->prior.val.stringval,
          stack->scontext, stack->source);


  switch (stack->state)
  {
   case 130:
    (void) set_config_option(name, curvalue,
           curscontext, cursource,
           GUC_ACTION_SAVE, 1,
           WARNING, 0);
    break;

   case 129:
    (void) set_config_option(name, curvalue,
           curscontext, cursource,
           GUC_ACTION_SET, 1,
           WARNING, 0);
    break;

   case 131:
    (void) set_config_option(name, curvalue,
           curscontext, cursource,
           GUC_ACTION_LOCAL, 1,
           WARNING, 0);
    break;

   case 128:

    (void) set_config_option(name, stack->masked.val.stringval,
           stack->masked_scontext, PGC_S_SESSION,
           GUC_ACTION_SET, 1,
           WARNING, 0);

    (void) set_config_option(name, curvalue,
           curscontext, cursource,
           GUC_ACTION_LOCAL, 1,
           WARNING, 0);
    break;
  }


  if (variable->stack != oldvarstack)
   variable->stack->nest_level = stack->nest_level;
 }
 else
 {
  if (curvalue != pHolder->reset_val ||
   curscontext != pHolder->gen.reset_scontext ||
   cursource != pHolder->gen.reset_source)
  {
   (void) set_config_option(name, curvalue,
          curscontext, cursource,
          GUC_ACTION_SET, 1, WARNING, 0);
   variable->stack = ((void*)0);
  }
 }
}
