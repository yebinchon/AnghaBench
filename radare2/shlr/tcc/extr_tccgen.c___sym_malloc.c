
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_1__ Sym ;


 int SYM_POOL_NB ;
 int dynarray_add (int *,int *,TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int nb_sym_pools ;
 TYPE_1__* sym_free_first ;
 int sym_pools ;

__attribute__((used)) static Sym *__sym_malloc(void) {
 Sym *sym_pool, *sym, *last_sym;
 int i;
 int sym_pool_size = SYM_POOL_NB * sizeof(Sym);
 sym_pool = malloc (sym_pool_size);
 memset (sym_pool, 0, sym_pool_size);
 dynarray_add (&sym_pools, &nb_sym_pools, sym_pool);

 last_sym = sym_free_first;
 sym = sym_pool;
 for (i = 0; i < SYM_POOL_NB; i++) {
  sym->next = last_sym;
  last_sym = sym;
  sym++;
 }
 sym_free_first = last_sym;
 return last_sym;
}
