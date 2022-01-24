#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tag; } ;
struct symt_enum {int /*<<< orphan*/  vchildren; struct symt* base_type; int /*<<< orphan*/ * name; TYPE_1__ symt; } ;
struct symt {int dummy; } ;
struct module {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  SymTagEnum ; 
 struct symt_enum* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

struct symt_enum* FUNC3(struct module* module, const char* typename,
                                struct symt* basetype)
{
    struct symt_enum*   sym;

    if ((sym = FUNC0(&module->pool, sizeof(*sym))))
    {
        sym->symt.tag            = SymTagEnum;
        sym->name = (typename) ? FUNC1(&module->pool, typename) : NULL;
        sym->base_type           = basetype;
        FUNC2(&sym->vchildren, sizeof(struct symt*), 8);
    }
    return sym;
}