#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct symtab_elt {TYPE_2__* symp; TYPE_1__ ht_elt; int /*<<< orphan*/  compiland; scalar_t__ used; } ;
struct symt_ht {int /*<<< orphan*/  symt; } ;
struct module {scalar_t__ reloc_delta; int sortlist_valid; } ;
struct location {scalar_t__ offset; int /*<<< orphan*/  reg; int /*<<< orphan*/  kind; } ;
struct hash_table_iter {int dummy; } ;
struct hash_table {int dummy; } ;
struct elf_thunk_area {int /*<<< orphan*/  ordinal; } ;
typedef  scalar_t__ ULONG64 ;
struct TYPE_4__ {scalar_t__ st_value; int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_info; } ;
typedef  scalar_t__ DWORD_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STB_LOCAL ; 
#define  STT_FUNC 129 
#define  STT_OBJECT 128 
 int TRUE ; 
 int FUNC3 (scalar_t__,struct elf_thunk_area const*) ; 
 int /*<<< orphan*/  FUNC4 (struct hash_table const*,struct hash_table_iter*,int /*<<< orphan*/ *) ; 
 struct symtab_elt* FUNC5 (struct hash_table_iter*) ; 
 int /*<<< orphan*/  loc_absolute ; 
 struct symt_ht* FUNC6 (struct module*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct location,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct module* module, const struct hash_table* ht_symtab,
                               const struct elf_thunk_area* thunks)
{
    int		                j;
    struct hash_table_iter      hti;
    struct symtab_elt*          ste;
    DWORD_PTR                   addr;
    struct symt_ht*             symt;

    FUNC4(ht_symtab, &hti, NULL);
    while ((ste = FUNC5(&hti)))
    {
        if (ste->used) continue;

        addr = module->reloc_delta + ste->symp->st_value;

        j = FUNC3(ste->symp->st_value, thunks);
        if (j >= 0) /* thunk found */
        {
            FUNC10(module, ste->compiland, ste->ht_elt.name, thunks[j].ordinal,
                           addr, ste->symp->st_size);
        }
        else
        {
            ULONG64     ref_addr;
            struct location loc;

            symt = FUNC6(module, addr);
            if (symt && !FUNC7(&symt->symt, &ref_addr))
                ref_addr = addr;
            if (!symt || addr != ref_addr)
            {
                /* creating public symbols for all the ELF symbols which haven't been
                 * used yet (ie we have no debug information on them)
                 * That's the case, for example, of the .spec.c files
                 */
                switch (FUNC1(ste->symp->st_info))
                {
                case STT_FUNC:
                    FUNC8(module, ste->compiland, ste->ht_elt.name,
                                      addr, ste->symp->st_size, NULL);
                    break;
                case STT_OBJECT:
                    loc.kind = loc_absolute;
                    loc.reg = 0;
                    loc.offset = addr;
                    FUNC9(module, ste->compiland, ste->ht_elt.name,
                                             FUNC0(ste->symp->st_info) == STB_LOCAL,
                                             loc, ste->symp->st_size, NULL);
                    break;
                default:
                    FUNC2("Shouldn't happen\n");
                    break;
                }
                /* FIXME: this is a hack !!!
                 * we are adding new symbols, but as we're parsing a symbol table
                 * (hopefully without duplicate symbols) we delay rebuilding the sorted
                 * module table until we're done with the symbol table
                 * Otherwise, as we intertwine symbols' add and lookup, performance
                 * is rather bad
                 */
                module->sortlist_valid = TRUE;
            }
        }
    }
    /* see comment above */
    module->sortlist_valid = FALSE;
    return TRUE;
}