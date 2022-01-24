#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_1__ dwarf2_parse_context_t ;
struct TYPE_13__ {struct symt* symt; } ;
typedef  TYPE_2__ dwarf2_debug_info_t ;
struct TYPE_14__ {struct symt symt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 struct symt* FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,struct symt*,int) ; 

__attribute__((used)) static struct symt* FUNC7(dwarf2_parse_context_t* ctx,
                                                dwarf2_debug_info_t* di)
{
    struct symt* ref_type = NULL;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di));

    ref_type = FUNC5(ctx, di);
    /* FIXME: for now, we hard-wire C++ references to pointers */
    di->symt = &FUNC6(ctx->module, ref_type, sizeof(void *))->symt;

    if (FUNC4(ctx, di)) FUNC0("Unsupported children\n");

    return di->symt;
}