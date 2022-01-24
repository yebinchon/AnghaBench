#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  writemask; } ;
struct shader_reg {int type; TYPE_1__ u; int /*<<< orphan*/  regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int /*<<< orphan*/  version; } ;
typedef  int DWORD ;

/* Variables and functions */
#define  BWRITERSPR_ADDR 135 
#define  BWRITERSPR_ATTROUT 134 
#define  BWRITERSPR_CONST 133 
#define  BWRITERSPR_INPUT 132 
#define  BWRITERSPR_OUTPUT 131 
#define  BWRITERSPR_PREDICATE 130 
#define  BWRITERSPR_RASTOUT 129 
#define  BWRITERSPR_TEMP 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int D3DSPR_ADDR ; 
 int D3DSPR_PREDICATE ; 
 int D3DSP_DSTSHIFT_MASK ; 
 int D3DSP_DSTSHIFT_SHIFT ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bc_writer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC8(struct bc_writer *This, const struct shader_reg *reg,
                         struct bytecode_buffer *buffer,
                         DWORD shift, DWORD mod) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    DWORD has_wmask;

    if(reg->rel_reg) {
        FUNC2("Relative addressing not supported for destination registers\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case BWRITERSPR_OUTPUT:
            token |= FUNC6(This, reg->regnum, reg->u.writemask, &has_wmask);
            break;

        case BWRITERSPR_RASTOUT:
        case BWRITERSPR_ATTROUT:
            /* These registers are mapped to input and output regs. They can be encoded in the bytecode,
            * but are unexpected. If we hit this path it might be due to an error.
            */
            FUNC1("Unexpected register type %u\n", reg->type);
            /* drop through */
        case BWRITERSPR_INPUT:
        case BWRITERSPR_TEMP:
        case BWRITERSPR_CONST:
            token |= FUNC5( reg->type, reg->regnum );
            has_wmask = TRUE;
            break;

        case BWRITERSPR_ADDR:
            if(reg->regnum != 0) {
                FUNC2("Only a0 exists\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= FUNC5( D3DSPR_ADDR, 0 );
            has_wmask = TRUE;
            break;

        case BWRITERSPR_PREDICATE:
            if(This->version != FUNC0(2, 1)){
                FUNC2("Predicate register is allowed only in vs_2_x\n");
                This->state = E_INVALIDARG;
                return;
            }
            if(reg->regnum != 0) {
                FUNC2("Only predicate register p0 exists\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= FUNC5( D3DSPR_PREDICATE, 0 );
            has_wmask = TRUE;
            break;

        default:
            FUNC2("Invalid register type for 1.x-2.x vertex shader\n");
            This->state = E_INVALIDARG;
            return;
    }

    /* strictly speaking there are no modifiers in vs_2_0 and vs_1_x, but they can be written
     * into the bytecode and since the compiler doesn't do such checks write them
     * (the checks are done by the undocumented shader validator)
     */
    token |= (shift << D3DSP_DSTSHIFT_SHIFT) & D3DSP_DSTSHIFT_MASK;
    token |= FUNC3(mod);

    if(has_wmask) {
        token |= FUNC4(reg->u.writemask);
    }
    FUNC7(buffer, token);
}