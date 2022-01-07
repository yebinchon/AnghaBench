
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {int name; struct variable* next; } ;


 struct variable* allvariables ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct variable *
find_simple(char *name)
{
 struct variable *p;

 for (p = allvariables; p; p = p->next)
 {
  if (strcmp(p->name, name) == 0)
   return p;
 }

 return ((void*)0);
}
