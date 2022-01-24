#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* module; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  ModuleName; } ;
struct TYPE_7__ {TYPE_1__ module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (char*,TYPE_3__ const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char* FUNC2(const dwarf2_parse_context_t* ctx)
{
    return FUNC1("ctx(%p,%s)",
                            ctx, FUNC0(ctx->module->module.ModuleName));
}