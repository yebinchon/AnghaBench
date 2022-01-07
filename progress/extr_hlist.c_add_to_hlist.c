
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ hlist ;


 TYPE_1__* malloc (int) ;
 int max_hlist_size ;

int add_to_hlist(hlist **begin, hlist **end, int size, int value) {
   int ret;

   if (*begin == ((void*)0)) {
       if ((*begin = malloc(sizeof(hlist))) == ((void*)0))
           return 0;
       *end = *begin;
       (*begin)->next = ((void*)0);
       (*begin)->prev = ((void*)0);
       ret = 1;
   }
   else if (size == max_hlist_size) {
       hlist *tmp = (*end)->prev;
       tmp->next = ((void*)0);
       (*end)->next = *begin;
       (*end)->prev = ((void*)0);
       *begin = *end;
       *end = tmp;
       (*begin)->next->prev = *begin;
       ret = 0;
   }
   else {
       hlist *new = malloc(sizeof(hlist));
       if (!new)
           return 0;
       new->next = *begin;
       new->prev = ((void*)0);
       *begin = new;
       (*begin)->next->prev = *begin;
       ret = 1;
   }
   (*begin)->value = value;
   return ret;
}
