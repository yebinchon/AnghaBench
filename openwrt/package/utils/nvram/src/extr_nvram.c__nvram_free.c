
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {struct TYPE_6__* value; struct TYPE_6__* next; } ;
typedef TYPE_1__ nvram_tuple_t ;
struct TYPE_7__ {TYPE_1__* nvram_dead; TYPE_1__** nvram_hash; } ;
typedef TYPE_2__ nvram_handle_t ;


 size_t NVRAM_ARRAYSIZE (TYPE_1__**) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void _nvram_free(nvram_handle_t *h)
{
 uint32_t i;
 nvram_tuple_t *t, *next;


 for (i = 0; i < NVRAM_ARRAYSIZE(h->nvram_hash); i++) {
  for (t = h->nvram_hash[i]; t; t = next) {
   next = t->next;
   if (t->value)
    free(t->value);
   free(t);
  }
  h->nvram_hash[i] = ((void*)0);
 }


 for (t = h->nvram_dead; t; t = next) {
  next = t->next;
  if (t->value)
   free(t->value);
  free(t);
 }

 h->nvram_dead = ((void*)0);
}
