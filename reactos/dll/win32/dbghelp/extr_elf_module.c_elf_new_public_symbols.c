
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct symtab_elt {TYPE_2__* symp; TYPE_1__ ht_elt; int compiland; } ;
struct module {scalar_t__ reloc_delta; } ;
struct hash_table_iter {int dummy; } ;
struct hash_table {int dummy; } ;
struct TYPE_4__ {int st_size; scalar_t__ st_value; } ;


 int SYMOPT_NO_PUBLICS ;
 int TRUE ;
 int dbghelp_options ;
 int hash_table_iter_init (struct hash_table const*,struct hash_table_iter*,int *) ;
 struct symtab_elt* hash_table_iter_up (struct hash_table_iter*) ;
 int symt_new_public (struct module*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int elf_new_public_symbols(struct module* module, const struct hash_table* symtab)
{
    struct hash_table_iter hti;
    struct symtab_elt* ste;

    if (dbghelp_options & SYMOPT_NO_PUBLICS) return TRUE;



    hash_table_iter_init(symtab, &hti, ((void*)0));
    while ((ste = hash_table_iter_up(&hti)))
    {
        symt_new_public(module, ste->compiland, ste->ht_elt.name,
                        module->reloc_delta + ste->symp->st_value,
                        ste->symp->st_size);
    }
    return TRUE;
}
