#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int word_size; unsigned int data; } ;
typedef  TYPE_1__ dwarf2_traverse_context_t ;
struct TYPE_11__ {int form; int /*<<< orphan*/  attribute; } ;
typedef  TYPE_2__ dwarf2_abbrev_entry_attr_t ;

/* Variables and functions */
#define  DW_FORM_addr 148 
#define  DW_FORM_block 147 
#define  DW_FORM_block1 146 
#define  DW_FORM_block2 145 
#define  DW_FORM_block4 144 
#define  DW_FORM_data1 143 
#define  DW_FORM_data2 142 
#define  DW_FORM_data4 141 
#define  DW_FORM_data8 140 
#define  DW_FORM_flag 139 
#define  DW_FORM_flag_present 138 
#define  DW_FORM_ref1 137 
#define  DW_FORM_ref2 136 
#define  DW_FORM_ref4 135 
#define  DW_FORM_ref8 134 
#define  DW_FORM_ref_addr 133 
#define  DW_FORM_ref_udata 132 
#define  DW_FORM_sdata 131 
#define  DW_FORM_string 130 
#define  DW_FORM_strp 129 
#define  DW_FORM_udata 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (TYPE_1__*) ; 
 unsigned int FUNC4 (TYPE_1__*) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 unsigned int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(dwarf2_traverse_context_t* ctx,
                                     const dwarf2_abbrev_entry_attr_t* abbrev_attr)
{
    unsigned    step;

    FUNC1("(attr:0x%lx,form:0x%lx)\n", abbrev_attr->attribute, abbrev_attr->form);

    switch (abbrev_attr->form)
    {
    case DW_FORM_flag_present: step = 0; break;
    case DW_FORM_ref_addr:
    case DW_FORM_addr:   step = ctx->word_size; break;
    case DW_FORM_flag:
    case DW_FORM_data1:
    case DW_FORM_ref1:   step = 1; break;
    case DW_FORM_data2:
    case DW_FORM_ref2:   step = 2; break;
    case DW_FORM_data4:
    case DW_FORM_ref4:
    case DW_FORM_strp:   step = 4; break;
    case DW_FORM_data8:
    case DW_FORM_ref8:   step = 8; break;
    case DW_FORM_sdata:
    case DW_FORM_ref_udata:
    case DW_FORM_udata:  step = FUNC3(ctx); break;
    case DW_FORM_string: step = FUNC7((const char*)ctx->data) + 1; break;
    case DW_FORM_block:  step = FUNC2(ctx); break;
    case DW_FORM_block1: step = FUNC4(ctx); break;
    case DW_FORM_block2: step = FUNC5(ctx); break;
    case DW_FORM_block4: step = FUNC6(ctx); break;
    default:
        FUNC0("Unhandled attribute form %lx\n", abbrev_attr->form);
        return;
    }
    ctx->data += step;
}