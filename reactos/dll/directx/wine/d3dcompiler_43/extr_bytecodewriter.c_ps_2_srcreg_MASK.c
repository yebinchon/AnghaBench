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
struct shader_reg {int type; int /*<<< orphan*/  srcmod; TYPE_1__ u; int /*<<< orphan*/  regnum; scalar_t__ rel_reg; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {void* state; int /*<<< orphan*/  version; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  BWRITERSPR_COLOROUT 137 
#define  BWRITERSPR_CONST 136 
#define  BWRITERSPR_CONSTBOOL 135 
#define  BWRITERSPR_CONSTINT 134 
#define  BWRITERSPR_DEPTHOUT 133 
#define  BWRITERSPR_INPUT 132 
#define  BWRITERSPR_LABEL 131 
#define  BWRITERSPR_PREDICATE 130 
#define  BWRITERSPR_SAMPLER 129 
#define  BWRITERSPR_TEMP 128 
 int D3DSPR_PREDICATE ; 
 int D3DVS_SWIZZLE_MASK ; 
 void* E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bc_writer*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC7 (struct bytecode_buffer*,int) ; 

__attribute__((used)) static void FUNC8(struct bc_writer *This,
                        const struct shader_reg *reg,
                        struct bytecode_buffer *buffer) {
    DWORD token = (1u << 31); /* Bit 31 of registers is 1 */
    DWORD d3d9reg;
    if(reg->rel_reg) {
        FUNC1("Relative addressing not supported in <= ps_3_0\n");
        This->state = E_INVALIDARG;
        return;
    }

    switch(reg->type) {
        case BWRITERSPR_INPUT:
            token |= FUNC6(This, reg);
            break;

            /* Can be mapped 1:1 */
        case BWRITERSPR_TEMP:
        case BWRITERSPR_CONST:
        case BWRITERSPR_COLOROUT:
        case BWRITERSPR_CONSTBOOL:
        case BWRITERSPR_CONSTINT:
        case BWRITERSPR_SAMPLER:
        case BWRITERSPR_LABEL:
        case BWRITERSPR_DEPTHOUT:
            d3d9reg = FUNC2(reg->type);
            token |= FUNC5( d3d9reg, reg->regnum );
            break;

        case BWRITERSPR_PREDICATE:
            if(This->version != FUNC0(2, 1)){
                FUNC1("Predicate register not supported in ps_2_0\n");
                This->state = E_INVALIDARG;
            }
            if(reg->regnum) {
                FUNC1("Predicate register with regnum %u not supported\n",
                     reg->regnum);
                This->state = E_INVALIDARG;
            }
            token |= FUNC5( D3DSPR_PREDICATE, 0 );
            break;

        default:
            FUNC1("Invalid register type for ps_2_0 shader\n");
            This->state = E_INVALIDARG;
            return;
    }

    token |= FUNC4(reg->u.swizzle) & D3DVS_SWIZZLE_MASK; /* already shifted */

    token |= FUNC3(reg->srcmod);
    FUNC7(buffer, token);
}