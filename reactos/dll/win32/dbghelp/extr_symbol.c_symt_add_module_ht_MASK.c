#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct symt_ht {int /*<<< orphan*/  symt; int /*<<< orphan*/  hash_elt; } ;
struct module {int /*<<< orphan*/  sortlist_valid; scalar_t__ num_symbols; struct symt_ht** addr_sorttab; int /*<<< orphan*/  ht_symbols; } ;
typedef  int /*<<< orphan*/  ULONG64 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct module*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct module* module, struct symt_ht* ht)
{
    ULONG64             addr;

    FUNC0(&module->ht_symbols, &ht->hash_elt);
    /* Don't store in sorttab a symbol without address, they are of
     * no use here (e.g. constant values)
     */
    if (FUNC1(&ht->symt, &addr) &&
        FUNC2(module, module->num_symbols + 1))
    {
        module->addr_sorttab[module->num_symbols++] = ht;
        module->sortlist_valid = FALSE;
    }
}