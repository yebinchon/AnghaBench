
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ hlist ;


 int free (TYPE_1__*) ;

void free_hlist(hlist *begin) {
   hlist *tmp = begin;

   while (begin) {
      tmp = begin->next;
      free(begin);
      begin = tmp;
   }
}
