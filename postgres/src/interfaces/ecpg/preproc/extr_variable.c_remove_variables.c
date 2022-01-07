
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int brace_level; struct variable* next; struct variable* name; int type; } ;
struct cursor {struct arguments* argsresult; struct arguments* argsinsert; struct cursor* next; } ;
struct arguments {struct arguments* next; struct variable* variable; } ;


 int ECPGfree_type (int ) ;
 struct variable* allvariables ;
 struct cursor* cur ;
 int free (struct variable*) ;

void
remove_variables(int brace_level)
{
 struct variable *p,
      *prev;

 for (p = prev = allvariables; p;)
 {
  if (p->brace_level >= brace_level)
  {

   struct cursor *ptr;

   for (ptr = cur; ptr != ((void*)0); ptr = ptr->next)
   {
    struct arguments *varptr,
         *prevvar;

    for (varptr = prevvar = ptr->argsinsert; varptr != ((void*)0); varptr = varptr->next)
    {
     if (p == varptr->variable)
     {

      if (varptr == ptr->argsinsert)
       ptr->argsinsert = varptr->next;
      else
       prevvar->next = varptr->next;
     }
    }
    for (varptr = prevvar = ptr->argsresult; varptr != ((void*)0); varptr = varptr->next)
    {
     if (p == varptr->variable)
     {

      if (varptr == ptr->argsresult)
       ptr->argsresult = varptr->next;
      else
       prevvar->next = varptr->next;
     }
    }
   }


   if (p == allvariables)
    prev = allvariables = p->next;
   else
    prev->next = p->next;

   ECPGfree_type(p->type);
   free(p->name);
   free(p);
   if (prev == allvariables)
    p = allvariables;
   else
    p = prev ? prev->next : ((void*)0);
  }
  else
  {
   prev = p;
   p = prev->next;
  }
 }
}
