#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  offset; int /*<<< orphan*/  kind; } ;
struct TYPE_23__ {TYPE_1__ frame; int /*<<< orphan*/ * func; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_3__ dwarf2_subprogram_t ;
typedef  int /*<<< orphan*/  dwarf2_parse_context_t ;
struct TYPE_24__ {TYPE_2__* abbrev; } ;
typedef  TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_22__ {int tag; int /*<<< orphan*/  entry_code; } ;

/* Variables and functions */
#define  DW_TAG_array_type 146 
#define  DW_TAG_base_type 145 
#define  DW_TAG_class_type 144 
#define  DW_TAG_const_type 143 
#define  DW_TAG_enumeration_type 142 
#define  DW_TAG_imported_declaration 141 
#define  DW_TAG_imported_module 140 
#define  DW_TAG_namespace 139 
#define  DW_TAG_pointer_type 138 
#define  DW_TAG_ptr_to_member_type 137 
#define  DW_TAG_reference_type 136 
#define  DW_TAG_structure_type 135 
#define  DW_TAG_subprogram 134 
#define  DW_TAG_subroutine_type 133 
#define  DW_TAG_typedef 132 
#define  DW_TAG_union_type 131 
#define  DW_TAG_unspecified_type 130 
#define  DW_TAG_variable 129 
#define  DW_TAG_volatile_type 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UdtClass ; 
 int /*<<< orphan*/  UdtStruct ; 
 int /*<<< orphan*/  UdtUnion ; 
 int /*<<< orphan*/  Wine_DW_no_register ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  loc_absolute ; 

__attribute__((used)) static void FUNC16(dwarf2_parse_context_t* ctx,
                                  dwarf2_debug_info_t* di)
{
    switch (di->abbrev->tag)
    {
    case DW_TAG_typedef:
        FUNC11(ctx, di);
        break;
    case DW_TAG_base_type:
        FUNC3(ctx, di);
        break;
    case DW_TAG_pointer_type:
        FUNC7(ctx, di);
        break;
    case DW_TAG_class_type:
        FUNC12(ctx, di, UdtClass);
        break;
    case DW_TAG_structure_type:
        FUNC12(ctx, di, UdtStruct);
        break;
    case DW_TAG_union_type:
        FUNC12(ctx, di, UdtUnion);
        break;
    case DW_TAG_array_type:
        FUNC2(ctx, di);
        break;
    case DW_TAG_const_type:
        FUNC4(ctx, di);
        break;
    case DW_TAG_volatile_type:
        FUNC15(ctx, di);
        break;
    case DW_TAG_unspecified_type:
        FUNC13(ctx, di);
        break;
    case DW_TAG_reference_type:
        FUNC8(ctx, di);
        break;
    case DW_TAG_enumeration_type:
        FUNC5(ctx, di);
        break;
    case DW_TAG_subprogram:
        FUNC9(ctx, di);
        break;
    case DW_TAG_subroutine_type:
        FUNC10(ctx, di);
        break;
    case DW_TAG_variable:
        {
            dwarf2_subprogram_t subpgm;

            subpgm.ctx = ctx;
            subpgm.func = NULL;
            subpgm.frame.kind = loc_absolute;
            subpgm.frame.offset = 0;
            subpgm.frame.reg = Wine_DW_no_register;
            FUNC14(&subpgm, NULL, di);
        }
        break;
    case DW_TAG_namespace:
        FUNC6(ctx, di);
        break;
    /* silence a couple of C++ defines */
    case DW_TAG_imported_module:
    case DW_TAG_imported_declaration:
    case DW_TAG_ptr_to_member_type:
        break;
    default:
        FUNC0("Unhandled Tag type 0x%lx at %s, for %lu\n",
              di->abbrev->tag, FUNC1(ctx), di->abbrev->entry_code); 
    }
}