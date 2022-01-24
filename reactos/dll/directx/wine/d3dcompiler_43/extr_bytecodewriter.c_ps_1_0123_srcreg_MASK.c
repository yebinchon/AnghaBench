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
struct shader_reg {int type; scalar_t__ srcmod; TYPE_1__ u; int /*<<< orphan*/  regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; } ;
typedef  int DWORD ;

/* Variables and functions */
#define  BWRITERSPR_CONST 130 
#define  BWRITERSPR_INPUT 129 
#define  BWRITERSPR_TEMP 128 
 scalar_t__ BWRITERSPSM_ABS ; 
 scalar_t__ BWRITERSPSM_ABSNEG ; 
 scalar_t__ BWRITERSPSM_DW ; 
 scalar_t__ BWRITERSPSM_DZ ; 
 scalar_t__ BWRITERSPSM_NOT ; 
 int D3DVS_SWIZZLE_MASK ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bc_writer*,struct shader_reg const*) ; 
 int FUNC5 (struct bc_writer*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC6 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC7(struct bc_writer *This, const struct shader_reg *reg,
                             struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    if(reg->rel_reg) {
        FUNC0("Relative addressing not supported in <= ps_3_0\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case BWRITERSPR_INPUT:
            token |= FUNC5(This, reg);
            break;

            /* Take care about the texture temporaries. There's a problem: They aren't
             * declared anywhere, so we can only hardcode the values that are used
             * to map ps_1_3 shaders to the common shader structure
             */
        case BWRITERSPR_TEMP:
            token |= FUNC4(This, reg);
            break;

        case BWRITERSPR_CONST: /* Can be mapped 1:1 */
            token |= FUNC3( reg->type, reg->regnum );
            break;

        default:
            FUNC0("Invalid register type for <= ps_1_3 shader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= FUNC2(reg->u.swizzle) & D3DVS_SWIZZLE_MASK; /* already shifted */

    if(reg->srcmod == BWRITERSPSM_DZ || reg->srcmod == BWRITERSPSM_DW ||
       reg->srcmod == BWRITERSPSM_ABS || reg->srcmod == BWRITERSPSM_ABSNEG ||
       reg->srcmod == BWRITERSPSM_NOT) {
        FUNC0("Invalid source modifier %u for <= ps_1_3\n", reg->srcmod);
        This->state = E_INVALIDARG;
        return;
    }
    token |= FUNC1(reg->srcmod);
    FUNC6(buffer, token);
}