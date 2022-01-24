#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct symt_enum {int dummy; } ;
struct symt_basic {int /*<<< orphan*/  symt; } ;
struct symt {int dummy; } ;
struct TYPE_16__ {int uvalue; int /*<<< orphan*/ * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_18__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_19__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_20__ {struct symt symt; } ;
struct TYPE_17__ {int tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  DW_AT_name ; 
#define  DW_TAG_enumerator 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btInt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,struct attribute*) ; 
 struct vector* FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*,struct symt_enum*) ; 
 struct symt_basic* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct vector*,unsigned int) ; 
 unsigned int FUNC10 (struct vector*) ; 

__attribute__((used)) static struct symt* FUNC11(dwarf2_parse_context_t* ctx,
                                                  dwarf2_debug_info_t* di)
{
    struct attribute    name;
    struct attribute    size;
    struct symt_basic*  basetype;
    struct vector*      children;
    dwarf2_debug_info_t*child;
    unsigned int        i;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di)); 

    if (!FUNC4(ctx, di, DW_AT_name, &name)) name.u.string = NULL;
    if (!FUNC4(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = 4;

    switch (size.u.uvalue) /* FIXME: that's wrong */
    {
    case 1: basetype = FUNC7(ctx->module, btInt, "char", 1); break;
    case 2: basetype = FUNC7(ctx->module, btInt, "short", 2); break;
    default:
    case 4: basetype = FUNC7(ctx->module, btInt, "int", 4); break;
    }

    di->symt = &FUNC8(ctx->module, name.u.string, &basetype->symt)->symt;

    children = FUNC5(ctx, di);
    /* FIXME: should we use the sibling stuff ?? */
    if (children) for (i = 0; i < FUNC10(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC9(children, i);

        switch (child->abbrev->tag)
        {
        case DW_TAG_enumerator:
            FUNC6(ctx, child, (struct symt_enum*)di->symt);
            break;
        default:
            FUNC0("Unhandled Tag type 0x%lx at %s, for %s\n",
                  di->abbrev->tag, FUNC2(ctx), FUNC3(di));
	}
    }
    return di->symt;
}