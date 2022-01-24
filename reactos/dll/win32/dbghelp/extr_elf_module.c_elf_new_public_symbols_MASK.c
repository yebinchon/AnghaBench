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
struct symtab_elt {TYPE_2__* symp; TYPE_1__ ht_elt; int /*<<< orphan*/  compiland; } ;
struct module {scalar_t__ reloc_delta; } ;
struct hash_table_iter {int dummy; } ;
struct hash_table {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  st_size; scalar_t__ st_value; } ;

/* Variables and functions */
 int SYMOPT_NO_PUBLICS ; 
 int TRUE ; 
 int dbghelp_options ; 
 int /*<<< orphan*/  FUNC0 (struct hash_table const*,struct hash_table_iter*,int /*<<< orphan*/ *) ; 
 struct symtab_elt* FUNC1 (struct hash_table_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct module* module, const struct hash_table* symtab)
{
    struct hash_table_iter      hti;
    struct symtab_elt*          ste;

    if (dbghelp_options & SYMOPT_NO_PUBLICS) return TRUE;

    /* FIXME: we're missing the ELF entry point here */

    FUNC0(symtab, &hti, NULL);
    while ((ste = FUNC1(&hti)))
    {
        FUNC2(module, ste->compiland, ste->ht_elt.name,
                        module->reloc_delta + ste->symp->st_value,
                        ste->symp->st_size);
    }
    return TRUE;
}