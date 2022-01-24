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
struct bc_writer {void* state; } ;
typedef  int DWORD ;

/* Variables and functions */
#define  BWRITERSPR_INPUT 129 
#define  BWRITERSPR_TEMP 128 
 int D3DSP_DSTSHIFT_MASK ; 
 int D3DSP_DSTSHIFT_SHIFT ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bc_writer*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC5 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC6(struct bc_writer *This, const struct shader_reg *reg,
                          struct bytecode_buffer *buffer,
                          DWORD shift, DWORD mod) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */

    if(reg->rel_reg) {
        FUNC0("Relative addressing not supported for destination registers\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case BWRITERSPR_TEMP: /* 1:1 mapping */
            token |= FUNC3( reg->type, reg->regnum );
            break;

	/* For texkill */
        case BWRITERSPR_INPUT:
            token |= FUNC4(This, reg);
            break;

        default:
            FUNC0("Invalid dest register type for 1.x pshader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= (shift << D3DSP_DSTSHIFT_SHIFT) & D3DSP_DSTSHIFT_MASK;
    token |= FUNC1(mod);

    token |= FUNC2(reg->u.writemask);
    FUNC5(buffer, token);
}