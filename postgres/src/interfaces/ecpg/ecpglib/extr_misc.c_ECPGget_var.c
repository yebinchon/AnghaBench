
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct var_list {int number; void* pointer; struct var_list* next; } ;


 struct var_list* ivlist ;

void *
ECPGget_var(int number)
{
 struct var_list *ptr;

 for (ptr = ivlist; ptr != ((void*)0) && ptr->number != number; ptr = ptr->next);
 return (ptr) ? ptr->pointer : ((void*)0);
}
