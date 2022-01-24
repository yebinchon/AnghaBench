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
struct shader_reg {scalar_t__ type; scalar_t__ rel_reg; TYPE_1__ u; int /*<<< orphan*/  regnum; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {scalar_t__ version; int /*<<< orphan*/  state; } ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ BWRITERSPR_OUTPUT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int D3DVS_ADDRESSMODE_MASK ; 
 int D3DVS_ADDRMODE_RELATIVE ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bytecode_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bc_writer*,scalar_t__,struct bytecode_buffer*) ; 

__attribute__((used)) static void FUNC8(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer,
                        DWORD shift, DWORD mod) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    DWORD d3d9reg;

    if(reg->rel_reg) {
        if(This->version == FUNC0(3, 0) &&
           reg->type == BWRITERSPR_OUTPUT) {
            token |= D3DVS_ADDRMODE_RELATIVE & D3DVS_ADDRESSMODE_MASK;
        } else {
            FUNC1("Relative addressing not supported for this shader type or register type\n");
            This->state = E_INVALIDARG;
            return;
        }
    }

    d3d9reg = FUNC3(reg->type);
    token |= FUNC5( d3d9reg, reg->regnum );
    token |= FUNC2(mod);
    token |= FUNC4(reg->u.writemask);
    FUNC6(buffer, token);

    /* vs_2_0 and newer write the register containing the index explicitly in the
     * binary code
     */
    if(token & D3DVS_ADDRMODE_RELATIVE) {
        FUNC7(This, reg->rel_reg, buffer);
    }
}