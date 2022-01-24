#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct symt_block {int dummy; } ;
struct TYPE_21__ {TYPE_4__* func; TYPE_6__* ctx; } ;
typedef  TYPE_2__ dwarf2_subprogram_t ;
struct TYPE_22__ {TYPE_1__* abbrev; } ;
typedef  TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_24__ {int /*<<< orphan*/  module; scalar_t__ load_offset; } ;
struct TYPE_23__ {scalar_t__ address; } ;
struct TYPE_20__ {int tag; } ;

/* Variables and functions */
#define  DW_TAG_GNU_call_site 133 
#define  DW_TAG_formal_parameter 132 
#define  DW_TAG_inlined_subroutine 131 
#define  DW_TAG_label 130 
#define  DW_TAG_lexical_block 129 
#define  DW_TAG_variable 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 struct vector* FUNC4 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct symt_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct symt_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,struct symt_block*,int /*<<< orphan*/ ) ; 
 struct symt_block* FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,struct symt_block*,scalar_t__,unsigned long) ; 
 scalar_t__ FUNC11 (struct vector*,unsigned int) ; 
 unsigned int FUNC12 (struct vector*) ; 

__attribute__((used)) static void FUNC13(dwarf2_subprogram_t* subpgm,
                                            struct symt_block* parent_block,
                                            dwarf2_debug_info_t* di)
{
    struct symt_block*  block;
    unsigned long       low_pc, high_pc;
    struct vector*      children;
    dwarf2_debug_info_t*child;
    unsigned int        i;

    FUNC1("%s, for %s\n", FUNC2(subpgm->ctx), FUNC3(di));

    if (!FUNC8(subpgm->ctx, di, &low_pc, &high_pc))
    {
        FUNC0("cannot read range\n");
        return;
    }

    block = FUNC10(subpgm->ctx->module, subpgm->func, parent_block,
                                 subpgm->ctx->load_offset + low_pc - subpgm->func->address,
                                 high_pc - low_pc);

    children = FUNC4(subpgm->ctx, di);
    if (children) for (i = 0; i < FUNC12(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC11(children, i);

        switch (child->abbrev->tag)
        {
        case DW_TAG_formal_parameter:
        case DW_TAG_variable:
            FUNC7(subpgm, block, child);
            break;
        case DW_TAG_lexical_block:
            FUNC5(subpgm, block, child);
            break;
        case DW_TAG_inlined_subroutine:
            FUNC13(subpgm, block, child);
            break;
        case DW_TAG_label:
            FUNC6(subpgm, child);
            break;
        case DW_TAG_GNU_call_site:
            /* this isn't properly supported by dbghelp interface. skip it for now */
            break;
        default:
            FUNC0("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, FUNC2(subpgm->ctx),
                  FUNC3(di));
        }
    }
    FUNC9(subpgm->ctx->module, subpgm->func, block, 0);
}