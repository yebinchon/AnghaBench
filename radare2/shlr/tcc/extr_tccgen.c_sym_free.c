
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int asm_label; struct TYPE_4__* next; } ;
typedef TYPE_1__ Sym ;


 int free (int ) ;
 TYPE_1__* sym_free_first ;

void sym_free(Sym *sym) {
 sym->next = sym_free_first;
 free (sym->asm_label);
 sym_free_first = sym;
}
