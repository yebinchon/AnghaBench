
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _variable {char const* value; int name; struct _variable* next; } ;
typedef TYPE_1__* VariableSpace ;
struct TYPE_3__ {struct _variable* next; } ;


 int strcmp (int ,char const*) ;

const char *
GetVariable(VariableSpace space, const char *name)
{
 struct _variable *current;

 if (!space)
  return ((void*)0);

 for (current = space->next; current; current = current->next)
 {
  int cmp = strcmp(current->name, name);

  if (cmp == 0)
  {

   return current->value;
  }
  if (cmp > 0)
   break;
 }

 return ((void*)0);
}
