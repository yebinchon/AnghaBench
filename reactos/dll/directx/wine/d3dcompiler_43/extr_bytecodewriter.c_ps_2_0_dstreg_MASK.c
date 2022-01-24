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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  BWRITERSPR_COLOROUT 132 
#define  BWRITERSPR_DEPTHOUT 131 
#define  BWRITERSPR_INPUT 130 
#define  BWRITERSPR_PREDICATE 129 
#define  BWRITERSPR_TEMP 128 
 int D3DSPR_PREDICATE ; 
 int D3DSP_DSTSHIFT_MASK ; 
 int D3DSP_DSTSHIFT_SHIFT ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bc_writer*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC7 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC8(struct bc_writer *This,
                          const struct shader_reg *reg,
                          struct bytecode_buffer *buffer,
                          DWORD shift, DWORD mod) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    DWORD d3d9reg;

    if(reg->rel_reg) {
        FUNC1("Relative addressing not supported for destination registers\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case BWRITERSPR_TEMP: /* 1:1 mapping */
        case BWRITERSPR_COLOROUT:
        case BWRITERSPR_DEPTHOUT:
            d3d9reg = FUNC3(reg->type);
            token |= FUNC5( d3d9reg, reg->regnum );
            break;

        case BWRITERSPR_PREDICATE:
            if(This->version != FUNC0(2, 1)){
                FUNC1("Predicate register not supported in ps_2_0\n");
                This->state = E_INVALIDARG;
            }
            token |= FUNC5( D3DSPR_PREDICATE, reg->regnum );
            break;

	/* texkill uses the input register as a destination parameter */
        case BWRITERSPR_INPUT:
            token |= FUNC6(This, reg);
            break;

        default:
            FUNC1("Invalid dest register type for 2.x pshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= (shift << D3DSP_DSTSHIFT_SHIFT) & D3DSP_DSTSHIFT_MASK;
    token |= FUNC2(mod);

    token |= FUNC4(reg->u.writemask);
    FUNC7(buffer, token);
}