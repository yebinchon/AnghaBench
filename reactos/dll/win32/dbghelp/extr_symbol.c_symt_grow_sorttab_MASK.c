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
struct symt_ht {int dummy; } ;
struct module {unsigned int sorttab_size; struct symt_ht** addr_sorttab; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct symt_ht** FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct symt_ht** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symt_ht**,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC3(struct module* module, unsigned sz)
{
    struct symt_ht**    new;
    unsigned int size;

    if (sz <= module->sorttab_size) return TRUE;
    if (module->addr_sorttab)
    {
        size = module->sorttab_size * 2;
        new = FUNC2(FUNC0(), 0, module->addr_sorttab,
                          size * sizeof(struct symt_ht*));
    }
    else
    {
        size = 64;
        new = FUNC1(FUNC0(), 0, size * sizeof(struct symt_ht*));
    }
    if (!new) return FALSE;
    module->sorttab_size = size;
    module->addr_sorttab = new;
    return TRUE;
}