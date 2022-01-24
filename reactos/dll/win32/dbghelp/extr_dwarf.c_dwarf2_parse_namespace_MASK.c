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
struct vector {int dummy; } ;
struct TYPE_11__ {scalar_t__* symt_cache; } ;
typedef  TYPE_1__ dwarf2_parse_context_t ;
struct TYPE_12__ {scalar_t__ symt; } ;
typedef  TYPE_2__ dwarf2_debug_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct vector* FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 size_t sc_void ; 
 scalar_t__ FUNC5 (struct vector*,unsigned int) ; 
 unsigned int FUNC6 (struct vector*) ; 

__attribute__((used)) static void FUNC7(dwarf2_parse_context_t* ctx,
                                   dwarf2_debug_info_t* di)
{
    struct vector*          children;
    dwarf2_debug_info_t*    child;
    unsigned int            i;

    if (di->symt) return;

    FUNC0("%s, for %s\n", FUNC1(ctx), FUNC2(di));

    di->symt = ctx->symt_cache[sc_void];

    children = FUNC3(ctx, di);
    if (children) for (i = 0; i < FUNC6(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC5(children, i);
        FUNC4(ctx, child);
    }
}