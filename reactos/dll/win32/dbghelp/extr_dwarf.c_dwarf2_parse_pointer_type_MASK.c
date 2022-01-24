#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct symt {int dummy; } ;
struct TYPE_15__ {int uvalue; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_16__ {int /*<<< orphan*/  module; struct symt** symt_cache; } ;
typedef  TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_17__ {struct symt* symt; } ;
typedef  TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_18__ {struct symt symt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct symt*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,struct attribute*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 struct symt* FUNC7 (TYPE_2__*,TYPE_3__*) ; 
 size_t sc_void ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ ,struct symt*,int) ; 

__attribute__((used)) static struct symt* FUNC9(dwarf2_parse_context_t* ctx,
                                              dwarf2_debug_info_t* di)
{
    struct symt*        ref_type;
    struct attribute    size;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC3(ctx), FUNC4(di)); 

    if (!FUNC5(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = sizeof(void *);
    if (!(ref_type = FUNC7(ctx, di)))
    {
        ref_type = ctx->symt_cache[sc_void];
        FUNC2(ref_type);
    }
    di->symt = &FUNC8(ctx->module, ref_type, size.u.uvalue)->symt;
    if (FUNC6(ctx, di)) FUNC0("Unsupported children\n");
    return di->symt;
}