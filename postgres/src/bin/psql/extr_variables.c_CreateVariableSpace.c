
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _variable {int * next; int * assign_hook; int * substitute_hook; int * value; int * name; } ;
typedef struct _variable* VariableSpace ;


 struct _variable* pg_malloc (int) ;

VariableSpace
CreateVariableSpace(void)
{
 struct _variable *ptr;

 ptr = pg_malloc(sizeof *ptr);
 ptr->name = ((void*)0);
 ptr->value = ((void*)0);
 ptr->substitute_hook = ((void*)0);
 ptr->assign_hook = ((void*)0);
 ptr->next = ((void*)0);

 return ptr;
}
