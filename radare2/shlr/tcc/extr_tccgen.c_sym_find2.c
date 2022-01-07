
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int v; struct TYPE_4__* prev; } ;
typedef TYPE_1__ Sym ;



Sym *sym_find2(Sym *s, int v) {
 while (s) {
  if (s->v == v) {
   return s;
  }
  s = s->prev;
 }
 return ((void*)0);
}
