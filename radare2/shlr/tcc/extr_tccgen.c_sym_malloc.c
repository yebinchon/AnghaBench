
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ Sym ;


 TYPE_1__* __sym_malloc () ;
 TYPE_1__* sym_free_first ;

__attribute__((used)) static inline Sym *sym_malloc(void) {
 Sym *sym;
 sym = sym_free_first;
 if (!sym) {
  sym = __sym_malloc ();
 }
 sym_free_first = sym->next;
 return sym;
}
