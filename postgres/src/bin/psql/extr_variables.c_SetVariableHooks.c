
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _variable {void* (* substitute_hook ) (int *) ;int * value; struct _variable* next; int (* assign_hook ) (int *) ;int name; } ;
typedef void* (* VariableSubstituteHook ) (int *) ;
typedef struct _variable* VariableSpace ;
typedef int (* VariableAssignHook ) (int *) ;


 struct _variable* pg_malloc (int) ;
 int pg_strdup (char const*) ;
 int strcmp (int ,char const*) ;
 void* stub1 (int *) ;
 int stub2 (int *) ;
 void* stub3 (int *) ;
 int stub4 (int *) ;
 int valid_variable_name (char const*) ;

void
SetVariableHooks(VariableSpace space, const char *name,
     VariableSubstituteHook shook,
     VariableAssignHook ahook)
{
 struct _variable *current,
      *previous;

 if (!space || !name)
  return;

 if (!valid_variable_name(name))
  return;

 for (previous = space, current = space->next;
   current;
   previous = current, current = current->next)
 {
  int cmp = strcmp(current->name, name);

  if (cmp == 0)
  {

   current->substitute_hook = shook;
   current->assign_hook = ahook;
   if (shook)
    current->value = (*shook) (current->value);
   if (ahook)
    (void) (*ahook) (current->value);
   return;
  }
  if (cmp > 0)
   break;
 }


 current = pg_malloc(sizeof *current);
 current->name = pg_strdup(name);
 current->value = ((void*)0);
 current->substitute_hook = shook;
 current->assign_hook = ahook;
 current->next = previous->next;
 previous->next = current;
 if (shook)
  current->value = (*shook) (current->value);
 if (ahook)
  (void) (*ahook) (current->value);
}
