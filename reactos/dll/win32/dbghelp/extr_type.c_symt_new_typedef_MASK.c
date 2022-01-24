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
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct symt_typedef {TYPE_1__ symt; TYPE_2__ hash_elt; struct symt* type; } ;
struct symt {int dummy; } ;
struct module {int /*<<< orphan*/  ht_types; int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  SymTagTypedef ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 struct symt_typedef* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct module*,TYPE_1__*) ; 

struct symt_typedef* FUNC4(struct module* module, struct symt* ref, 
                                      const char* name)
{
    struct symt_typedef* sym;

    if ((sym = FUNC1(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag = SymTagTypedef;
        sym->type     = ref;
        sym->hash_elt.name = FUNC2(&module->pool, name);
        FUNC0(&module->ht_types, &sym->hash_elt);
        FUNC3(module, &sym->symt);
    }
    return sym;
}