
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * svalue; int name; } ;
typedef TYPE_1__ Variable ;
struct TYPE_9__ {int nvariables; int vars_sorted; TYPE_1__* variables; } ;
typedef TYPE_2__ CState ;


 int fprintf (int ,char*,char const*,char*) ;
 TYPE_1__* lookupVariable (TYPE_2__*,char*) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (TYPE_1__*,int) ;
 int pg_strdup (char*) ;
 int stderr ;
 int valid_variable_name (char*) ;

__attribute__((used)) static Variable *
lookupCreateVariable(CState *st, const char *context, char *name)
{
 Variable *var;

 var = lookupVariable(st, name);
 if (var == ((void*)0))
 {
  Variable *newvars;





  if (!valid_variable_name(name))
  {
   fprintf(stderr, "%s: invalid variable name: \"%s\"\n",
     context, name);
   return ((void*)0);
  }


  if (st->variables)
   newvars = (Variable *) pg_realloc(st->variables,
             (st->nvariables + 1) * sizeof(Variable));
  else
   newvars = (Variable *) pg_malloc(sizeof(Variable));

  st->variables = newvars;

  var = &newvars[st->nvariables];

  var->name = pg_strdup(name);
  var->svalue = ((void*)0);


  st->nvariables++;

  st->vars_sorted = 0;
 }

 return var;
}
