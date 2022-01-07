
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ value; } ;
typedef TYPE_1__ hlist ;



int get_hlist_average(hlist *begin, int size) {
   unsigned long long avg = 0;

   while (begin) {
      avg += begin->value;
      begin = begin->next;
   }
   return avg / size;
}
