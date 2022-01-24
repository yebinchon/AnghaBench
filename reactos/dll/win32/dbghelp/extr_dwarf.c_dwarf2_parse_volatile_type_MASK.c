#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct TYPE_11__ {struct symt** symt_cache; } ;
typedef  TYPE_1__ dwarf2_parse_context_t ;
struct TYPE_12__ {struct symt* symt; } ;
typedef  TYPE_2__ dwarf2_debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symt*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 struct symt* FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 size_t sc_void ; 

__attribute__((used)) static struct symt* FUNC7(dwarf2_parse_context_t* ctx,
                                               dwarf2_debug_info_t* di)
{
    struct symt* ref_type;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC3(ctx), FUNC4(di));

    if (!(ref_type = FUNC6(ctx, di)))
    {
        ref_type = ctx->symt_cache[sc_void];
        FUNC2(ref_type);
    }
    if (FUNC5(ctx, di)) FUNC0("Unsupported children\n");
    di->symt = ref_type;

    return ref_type;
}