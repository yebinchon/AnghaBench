#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct symt_block {int dummy; } ;
struct TYPE_27__ {TYPE_4__* func; TYPE_6__* ctx; } ;
typedef  TYPE_2__ dwarf2_subprogram_t ;
struct TYPE_28__ {TYPE_1__* abbrev; } ;
typedef  TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_30__ {int /*<<< orphan*/  module; scalar_t__ load_offset; } ;
struct TYPE_29__ {scalar_t__ address; } ;
struct TYPE_26__ {int tag; } ;

/* Variables and functions */
#define  DW_TAG_GNU_call_site 143 
#define  DW_TAG_class_type 142 
#define  DW_TAG_const_type 141 
#define  DW_TAG_enumeration_type 140 
#define  DW_TAG_formal_parameter 139 
#define  DW_TAG_imported_module 138 
#define  DW_TAG_inlined_subroutine 137 
#define  DW_TAG_label 136 
#define  DW_TAG_lexical_block 135 
#define  DW_TAG_pointer_type 134 
#define  DW_TAG_structure_type 133 
#define  DW_TAG_subprogram 132 
#define  DW_TAG_subroutine_type 131 
#define  DW_TAG_typedef 130 
#define  DW_TAG_union_type 129 
#define  DW_TAG_variable 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct vector* FUNC5 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct symt_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct symt_block*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_3__*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_4__*,struct symt_block*,int /*<<< orphan*/ ) ; 
 struct symt_block* FUNC14 (int /*<<< orphan*/ ,TYPE_4__*,struct symt_block*,scalar_t__,unsigned long) ; 
 scalar_t__ FUNC15 (struct vector*,unsigned int) ; 
 unsigned int FUNC16 (struct vector*) ; 

__attribute__((used)) static void FUNC17(dwarf2_subprogram_t* subpgm,
                                          struct symt_block* parent_block,
					  dwarf2_debug_info_t* di)
{
    struct symt_block*  block;
    unsigned long       low_pc, high_pc;
    struct vector*      children;
    dwarf2_debug_info_t*child;
    unsigned int        i;

    FUNC1("%s, for %s\n", FUNC3(subpgm->ctx), FUNC4(di));

    if (!FUNC12(subpgm->ctx, di, &low_pc, &high_pc))
    {
        FUNC2("no range\n");
        return;
    }

    block = FUNC14(subpgm->ctx->module, subpgm->func, parent_block,
                                 subpgm->ctx->load_offset + low_pc - subpgm->func->address,
                                 high_pc - low_pc);

    children = FUNC5(subpgm->ctx, di);
    if (children) for (i = 0; i < FUNC16(children); i++)
    {
        child = *(dwarf2_debug_info_t**)FUNC15(children, i);

        switch (child->abbrev->tag)
        {
        case DW_TAG_inlined_subroutine:
            FUNC7(subpgm, block, child);
            break;
        case DW_TAG_variable:
            FUNC11(subpgm, block, child);
            break;
        case DW_TAG_pointer_type:
            FUNC8(subpgm->ctx, di);
            break;
        case DW_TAG_subroutine_type:
            FUNC10(subpgm->ctx, di);
            break;
        case DW_TAG_const_type:
            FUNC6(subpgm->ctx, di);
            break;
        case DW_TAG_lexical_block:
            FUNC17(subpgm, block, child);
            break;
        case DW_TAG_subprogram:
            /* FIXME: likely a declaration (to be checked)
             * skip it for now
             */
            break;
        case DW_TAG_formal_parameter:
            /* FIXME: likely elements for exception handling (GCC flavor)
             * Skip it for now
             */
            break;
        case DW_TAG_imported_module:
            /* C++ stuff to be silenced (for now) */
            break;
        case DW_TAG_GNU_call_site:
            /* this isn't properly supported by dbghelp interface. skip it for now */
            break;
        case DW_TAG_label:
            FUNC9(subpgm, child);
            break;
        case DW_TAG_class_type:
        case DW_TAG_structure_type:
        case DW_TAG_union_type:
        case DW_TAG_enumeration_type:
        case DW_TAG_typedef:
            /* the type referred to will be loaded when we need it, so skip it */
            break;
        default:
            FUNC0("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, FUNC3(subpgm->ctx), FUNC4(di));
        }
    }

    FUNC13(subpgm->ctx->module, subpgm->func, block, 0);
}