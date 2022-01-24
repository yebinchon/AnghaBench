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
struct symt {int dummy; } ;
struct TYPE_17__ {int uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_18__ {int /*<<< orphan*/  module; struct symt** symt_cache; } ;
typedef  TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_19__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_20__ {struct symt symt; } ;
struct TYPE_16__ {int tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_count ; 
 int /*<<< orphan*/  DW_AT_lower_bound ; 
 int /*<<< orphan*/  DW_AT_upper_bound ; 
#define  DW_TAG_subrange_type 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,struct attribute*) ; 
 struct vector* FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 struct symt* FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 size_t sc_int4 ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int,int,struct symt*,struct symt*) ; 
 scalar_t__ FUNC8 (struct vector const*,unsigned int) ; 
 unsigned int FUNC9 (struct vector const*) ; 

__attribute__((used)) static struct symt* FUNC10(dwarf2_parse_context_t* ctx,
                                            dwarf2_debug_info_t* di)
{
    struct symt* ref_type;
    struct symt* idx_type = NULL;
    struct attribute min, max, cnt;
    dwarf2_debug_info_t* child;
    unsigned int i;
    const struct vector* children;

    if (di->symt) return di->symt;

    FUNC1("%s, for %s\n", FUNC2(ctx), FUNC3(di));

    ref_type = FUNC6(ctx, di);

    if (!(children = FUNC5(ctx, di)))
    {
        /* fake an array with unknown size */
        /* FIXME: int4 even on 64bit machines??? */
        idx_type = ctx->symt_cache[sc_int4];
        min.u.uvalue = 0;
        max.u.uvalue = -1;
    }
    else for (i = 0; i < FUNC9(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC8(children, i);
        switch (child->abbrev->tag)
        {
        case DW_TAG_subrange_type:
            idx_type = FUNC6(ctx, child);
            if (!FUNC4(ctx, child, DW_AT_lower_bound, &min))
                min.u.uvalue = 0;
            if (!FUNC4(ctx, child, DW_AT_upper_bound, &max))
                max.u.uvalue = 0;
            if (FUNC4(ctx, child, DW_AT_count, &cnt))
                max.u.uvalue = min.u.uvalue + cnt.u.uvalue;
            break;
        default:
            FUNC0("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, FUNC2(ctx), FUNC3(di));
            break;
        }
    }
    di->symt = &FUNC7(ctx->module, min.u.uvalue, max.u.uvalue, ref_type, idx_type)->symt;
    return di->symt;
}