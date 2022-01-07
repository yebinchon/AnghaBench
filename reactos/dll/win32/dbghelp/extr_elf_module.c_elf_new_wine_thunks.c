
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct symtab_elt {TYPE_2__* symp; TYPE_1__ ht_elt; int compiland; scalar_t__ used; } ;
struct symt_ht {int symt; } ;
struct module {scalar_t__ reloc_delta; int sortlist_valid; } ;
struct location {scalar_t__ offset; int reg; int kind; } ;
struct hash_table_iter {int dummy; } ;
struct hash_table {int dummy; } ;
struct elf_thunk_area {int ordinal; } ;
typedef scalar_t__ ULONG64 ;
struct TYPE_4__ {scalar_t__ st_value; int st_size; int st_info; } ;
typedef scalar_t__ DWORD_PTR ;


 int ELF32_ST_BIND (int ) ;
 int ELF32_ST_TYPE (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int STB_LOCAL ;


 int TRUE ;
 int elf_is_in_thunk_area (scalar_t__,struct elf_thunk_area const*) ;
 int hash_table_iter_init (struct hash_table const*,struct hash_table_iter*,int *) ;
 struct symtab_elt* hash_table_iter_up (struct hash_table_iter*) ;
 int loc_absolute ;
 struct symt_ht* symt_find_nearest (struct module*,scalar_t__) ;
 int symt_get_address (int *,scalar_t__*) ;
 int symt_new_function (struct module*,int ,int ,scalar_t__,int ,int *) ;
 int symt_new_global_variable (struct module*,int ,int ,int,struct location,int ,int *) ;
 int symt_new_thunk (struct module*,int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int elf_new_wine_thunks(struct module* module, const struct hash_table* ht_symtab,
                               const struct elf_thunk_area* thunks)
{
    int j;
    struct hash_table_iter hti;
    struct symtab_elt* ste;
    DWORD_PTR addr;
    struct symt_ht* symt;

    hash_table_iter_init(ht_symtab, &hti, ((void*)0));
    while ((ste = hash_table_iter_up(&hti)))
    {
        if (ste->used) continue;

        addr = module->reloc_delta + ste->symp->st_value;

        j = elf_is_in_thunk_area(ste->symp->st_value, thunks);
        if (j >= 0)
        {
            symt_new_thunk(module, ste->compiland, ste->ht_elt.name, thunks[j].ordinal,
                           addr, ste->symp->st_size);
        }
        else
        {
            ULONG64 ref_addr;
            struct location loc;

            symt = symt_find_nearest(module, addr);
            if (symt && !symt_get_address(&symt->symt, &ref_addr))
                ref_addr = addr;
            if (!symt || addr != ref_addr)
            {




                switch (ELF32_ST_TYPE(ste->symp->st_info))
                {
                case 129:
                    symt_new_function(module, ste->compiland, ste->ht_elt.name,
                                      addr, ste->symp->st_size, ((void*)0));
                    break;
                case 128:
                    loc.kind = loc_absolute;
                    loc.reg = 0;
                    loc.offset = addr;
                    symt_new_global_variable(module, ste->compiland, ste->ht_elt.name,
                                             ELF32_ST_BIND(ste->symp->st_info) == STB_LOCAL,
                                             loc, ste->symp->st_size, ((void*)0));
                    break;
                default:
                    FIXME("Shouldn't happen\n");
                    break;
                }







                module->sortlist_valid = TRUE;
            }
        }
    }

    module->sortlist_valid = FALSE;
    return TRUE;
}
