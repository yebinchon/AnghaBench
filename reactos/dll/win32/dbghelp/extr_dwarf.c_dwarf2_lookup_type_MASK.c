#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_14__ {int /*<<< orphan*/  debug_info_table; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_15__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_12__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_type ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_4__ const*,int /*<<< orphan*/ ,struct attribute*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct symt* FUNC4(dwarf2_parse_context_t* ctx,
                                       const dwarf2_debug_info_t* di)
{
    struct attribute attr;
    dwarf2_debug_info_t* type;

    if (!FUNC1(ctx, di, DW_AT_type, &attr))
        return NULL;
    if (!(type = FUNC3(&ctx->debug_info_table, attr.u.uvalue)))
    {
        FUNC0("Unable to find back reference to type %lx\n", attr.u.uvalue);
        return NULL;
    }
    if (!type->symt)
    {
        /* load the debug info entity */
        FUNC2(ctx, type);
        if (!type->symt)
            FUNC0("Unable to load forward reference for tag %lx\n", type->abbrev->tag);
    }
    return type->symt;
}