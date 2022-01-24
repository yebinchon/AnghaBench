#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct location {scalar_t__ kind; int offset; } ;
struct TYPE_9__ {unsigned long uvalue; int /*<<< orphan*/ * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  module; } ;
typedef  TYPE_2__ dwarf2_parse_context_t ;
typedef  int /*<<< orphan*/  dwarf2_debug_info_t ;
typedef  scalar_t__ DWORD64 ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_bit_offset ; 
 int /*<<< orphan*/  DW_AT_bit_size ; 
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  DW_AT_data_member_location ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TI_GET_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct symt_udt*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct location*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct attribute*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct symt* FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ loc_absolute ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct symt_udt*,int /*<<< orphan*/ *,struct symt*,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct symt*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC11(dwarf2_parse_context_t* ctx,
                                    dwarf2_debug_info_t* di,
                                    struct symt_udt* parent)
{
    struct symt* elt_type;
    struct attribute name;
    struct attribute bit_size;
    struct attribute bit_offset;
    struct location  loc;

    FUNC2(parent);

    FUNC1("%s, for %s\n", FUNC4(ctx), FUNC5(di));

    if (!FUNC6(ctx, di, DW_AT_name, &name)) name.u.string = NULL;
    elt_type = FUNC8(ctx, di);
    if (FUNC3(ctx, di, DW_AT_data_member_location, &loc, NULL))
    {
        if (loc.kind != loc_absolute)
        {
           FUNC0("Found register, while not expecting it\n");
           loc.offset = 0;
        }
        else
            FUNC1("found member_location at %s -> %lu\n",
                  FUNC4(ctx), loc.offset);
    }
    else
        loc.offset = 0;
    if (!FUNC6(ctx, di, DW_AT_bit_size, &bit_size))
        bit_size.u.uvalue = 0;
    if (FUNC6(ctx, di, DW_AT_bit_offset, &bit_offset))
    {
        /* FIXME: we should only do this when implementation is LSB (which is
         * the case on i386 processors)
         */
        struct attribute nbytes;
        if (!FUNC6(ctx, di, DW_AT_byte_size, &nbytes))
        {
            DWORD64     size;
            nbytes.u.uvalue = FUNC10(ctx->module, elt_type, TI_GET_LENGTH, &size) ?
                (unsigned long)size : 0;
        }
        bit_offset.u.uvalue = nbytes.u.uvalue * 8 - bit_offset.u.uvalue - bit_size.u.uvalue;
    }
    else bit_offset.u.uvalue = 0;
    FUNC9(ctx->module, parent, name.u.string, elt_type,    
                         (loc.offset << 3) + bit_offset.u.uvalue,
                         bit_size.u.uvalue);

    if (FUNC7(ctx, di)) FUNC0("Unsupported children\n");
}