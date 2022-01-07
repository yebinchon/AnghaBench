
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; int value; int name; } ;
typedef TYPE_1__ nvram_tuple_t ;
struct TYPE_7__ {TYPE_1__** nvram_hash; } ;
typedef TYPE_2__ nvram_handle_t ;


 int NVRAM_ARRAYSIZE (TYPE_1__**) ;
 scalar_t__ malloc (int) ;

nvram_tuple_t * nvram_getall(nvram_handle_t *h)
{
 int i;
 nvram_tuple_t *t, *l, *x;

 l = ((void*)0);

 for (i = 0; i < NVRAM_ARRAYSIZE(h->nvram_hash); i++) {
  for (t = h->nvram_hash[i]; t; t = t->next) {
   if( (x = (nvram_tuple_t *) malloc(sizeof(nvram_tuple_t))) != ((void*)0) )
   {
    x->name = t->name;
    x->value = t->value;
    x->next = l;
    l = x;
   }
   else
   {
    break;
   }
  }
 }

 return l;
}
