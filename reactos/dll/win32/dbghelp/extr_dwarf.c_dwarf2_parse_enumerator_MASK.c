#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct symt_enum {int dummy; } ;
struct TYPE_7__ {scalar_t__ svalue; int /*<<< orphan*/  string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ dwarf2_parse_context_t ;
typedef  int /*<<< orphan*/  dwarf2_debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_const_value ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct attribute*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct symt_enum*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(dwarf2_parse_context_t* ctx,
                                    dwarf2_debug_info_t* di,
                                    struct symt_enum* parent)
{
    struct attribute    name;
    struct attribute    value;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di)); 

    if (!FUNC4(ctx, di, DW_AT_name, &name)) return;
    if (!FUNC4(ctx, di, DW_AT_const_value, &value)) value.u.svalue = 0;
    FUNC6(ctx->module, parent, name.u.string, value.u.svalue);

    if (FUNC5(ctx, di)) FUNC0("Unsupported children\n");
}