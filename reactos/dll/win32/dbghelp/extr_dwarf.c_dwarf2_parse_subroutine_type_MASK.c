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
struct vector {int dummy; } ;
struct symt {int dummy; } ;
struct symt_function_signature {struct symt symt; } ;
struct TYPE_13__ {int /*<<< orphan*/  module; struct symt** symt_cache; } ;
typedef  TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_14__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef  TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_12__ {int tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  CV_CALL_FAR_C ; 
#define  DW_TAG_formal_parameter 129 
#define  DW_TAG_unspecified_parameters 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct symt*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct vector* FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 struct symt* FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 size_t sc_void ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct symt_function_signature*,struct symt*) ; 
 struct symt_function_signature* FUNC8 (int /*<<< orphan*/ ,struct symt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct vector*,unsigned int) ; 
 unsigned int FUNC10 (struct vector*) ; 

__attribute__((used)) static struct symt* FUNC11(dwarf2_parse_context_t* ctx,
                                                 dwarf2_debug_info_t* di)
{
    struct symt* ret_type;
    struct symt_function_signature* sig_type;
    struct vector* children;
    dwarf2_debug_info_t* child;
    unsigned int i;

    if (di->symt) return di->symt;

    FUNC0("%s, for %s\n", FUNC3(ctx), FUNC4(di));

    if (!(ret_type = FUNC6(ctx, di)))
    {
        ret_type = ctx->symt_cache[sc_void];
        FUNC2(ret_type);
    }

    /* FIXME: assuming C source code */
    sig_type = FUNC8(ctx->module, ret_type, CV_CALL_FAR_C);

    children = FUNC5(ctx, di);
    if (children) for (i = 0; i < FUNC10(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC9(children, i);

        switch (child->abbrev->tag)
        {
        case DW_TAG_formal_parameter:
            FUNC7(ctx->module, sig_type,
                                                  FUNC6(ctx, child));
            break;
        case DW_TAG_unspecified_parameters:
            FUNC1("Unsupported unspecified parameters\n");
            break;
	}
    }

    return di->symt = &sig_type->symt;
}