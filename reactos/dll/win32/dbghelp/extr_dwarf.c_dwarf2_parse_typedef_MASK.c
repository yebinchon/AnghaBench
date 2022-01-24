#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/ * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_17__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_18__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_19__ {struct symt symt; } ;
struct TYPE_16__ {int /*<<< orphan*/  entry_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,struct attribute*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 struct symt* FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,struct symt*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct symt* FUNC7(dwarf2_parse_context_t* ctx,
                                         dwarf2_debug_info_t* di)
{
    struct symt*        ref_type;
    struct attribute    name;

    if (di->symt) return di->symt;

    FUNC1("%s, for %lu\n", FUNC2(ctx), di->abbrev->entry_code); 

    if (!FUNC3(ctx, di, DW_AT_name, &name)) name.u.string = NULL;
    ref_type = FUNC5(ctx, di);

    if (name.u.string)
        di->symt = &FUNC6(ctx->module, ref_type, name.u.string)->symt;
    if (FUNC4(ctx, di)) FUNC0("Unsupported children\n");
    return di->symt;
}