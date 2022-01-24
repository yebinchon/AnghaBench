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
struct TYPE_2__ {int /*<<< orphan*/  swizzle; } ;
struct shader_reg {int type; struct shader_reg* rel_reg; int /*<<< orphan*/  srcmod; TYPE_1__ u; int /*<<< orphan*/  regnum; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int /*<<< orphan*/  version; } ;
typedef  int DWORD ;

/* Variables and functions */
#define  BWRITERSPR_ADDR 143 
#define  BWRITERSPR_ATTROUT 142 
#define  BWRITERSPR_CONST 141 
#define  BWRITERSPR_CONSTBOOL 140 
#define  BWRITERSPR_CONSTINT 139 
#define  BWRITERSPR_INPUT 138 
#define  BWRITERSPR_LABEL 137 
#define  BWRITERSPR_LOOP 136 
#define  BWRITERSPR_OUTPUT 135 
#define  BWRITERSPR_PREDICATE 134 
#define  BWRITERSPR_RASTOUT 133 
#define  BWRITERSPR_TEMP 132 
 int BWRITERSP_WRITEMASK_0 ; 
 int BWRITERSP_WRITEMASK_1 ; 
 int BWRITERSP_WRITEMASK_2 ; 
 int BWRITERSP_WRITEMASK_3 ; 
#define  BWRITERVS_SWIZZLE_W 131 
#define  BWRITERVS_SWIZZLE_X 130 
#define  BWRITERVS_SWIZZLE_Y 129 
#define  BWRITERVS_SWIZZLE_Z 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int D3DSPR_LOOP ; 
 int D3DSPR_PREDICATE ; 
 int D3DVS_ADDRESSMODE_MASK ; 
 int D3DVS_ADDRMODE_RELATIVE ; 
 int D3DVS_SWIZZLE_MASK ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bc_writer*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC9(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    DWORD has_swizzle;
    DWORD component;
    DWORD d3d9reg;

    switch(reg->type) {
        case BWRITERSPR_OUTPUT:
            /* Map the swizzle to a writemask, the format expected
               by map_vs_output
             */
            switch(reg->u.swizzle) {
                case BWRITERVS_SWIZZLE_X:
                    component = BWRITERSP_WRITEMASK_0;
                    break;
                case BWRITERVS_SWIZZLE_Y:
                    component = BWRITERSP_WRITEMASK_1;
                    break;
                case BWRITERVS_SWIZZLE_Z:
                    component = BWRITERSP_WRITEMASK_2;
                    break;
                case BWRITERVS_SWIZZLE_W:
                    component = BWRITERSP_WRITEMASK_3;
                    break;
                default:
                    component = 0;
            }
            token |= FUNC7(This, reg->regnum, component, &has_swizzle);
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
        case BWRITERSPR_ADDR:
        case BWRITERSPR_CONSTINT:
        case BWRITERSPR_CONSTBOOL:
        case BWRITERSPR_LABEL:
            d3d9reg = FUNC3(reg->type);
            token |= FUNC6( d3d9reg, reg->regnum );
            break;

        case BWRITERSPR_LOOP:
            if(reg->regnum != 0) {
                FUNC2("Only regnum 0 is supported for the loop index register in vs_2_0\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= FUNC6( D3DSPR_LOOP, 0 );
            break;

        case BWRITERSPR_PREDICATE:
            if(This->version != FUNC0(2, 1)){
                FUNC2("Predicate register is allowed only in vs_2_x\n");
                This->state = E_INVALIDARG;
                return;
            }
            if(reg->regnum > 0) {
                FUNC2("Only predicate register 0 is supported\n");
                This->state = E_INVALIDARG;
                return;
            }
            token |= FUNC6( D3DSPR_PREDICATE, 0 );
            break;

        default:
            FUNC2("Invalid register type for 2.0 vshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= FUNC5(reg->u.swizzle) & D3DVS_SWIZZLE_MASK; /* already shifted */

    token |= FUNC4(reg->srcmod);

    if(reg->rel_reg)
        token |= D3DVS_ADDRMODE_RELATIVE & D3DVS_ADDRESSMODE_MASK;

    FUNC8(buffer, token);

    /* vs_2_0 and newer write the register containing the index explicitly in the
     * binary code
     */
    if(token & D3DVS_ADDRMODE_RELATIVE)
        FUNC9(This, reg->rel_reg, buffer);
}