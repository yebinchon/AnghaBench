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
struct symt_basic {struct symt symt; } ;
struct TYPE_12__ {char* string; int uvalue; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_13__ {struct symt** symt_cache; int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_14__ {struct symt* symt; } ;
typedef  TYPE_3__ dwarf2_debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btVoid ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,struct attribute*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 size_t sc_void ; 
 struct symt_basic* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct symt* FUNC7(dwarf2_parse_context_t* ctx,
                                           dwarf2_debug_info_t* di)
{
    struct attribute name;
    struct attribute size;
    struct symt_basic *basic;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di));

    if (di->symt) return di->symt;

    if (!FUNC4(ctx, di, DW_AT_name, &name))
        name.u.string = "void";
    size.u.uvalue = sizeof(void *);

    basic = FUNC6(ctx->module, btVoid, name.u.string, size.u.uvalue);
    di->symt = &basic->symt;

    if (!ctx->symt_cache[sc_void])
        ctx->symt_cache[sc_void] = di->symt;

    if (FUNC5(ctx, di)) FUNC0("Unsupported children\n");
    return di->symt;
}