#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; scalar_t__ regnum; } ;
struct instruction {int dstmod; TYPE_2__* src; int /*<<< orphan*/  shift; TYPE_3__ dst; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {scalar_t__* t_regnum; scalar_t__* v_regnum; TYPE_1__* funcs; void* state; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ regnum; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* srcreg ) (struct bc_writer*,TYPE_2__*,struct bytecode_buffer*) ;int /*<<< orphan*/  (* dstreg ) (struct bc_writer*,TYPE_3__*,struct bytecode_buffer*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* opcode ) (struct bc_writer*,struct instruction const*,int,struct bytecode_buffer*) ;} ;
typedef  int DWORD ;

/* Variables and functions */
 int BWRITERSPDM_SATURATE ; 
 scalar_t__ BWRITERSPR_INPUT ; 
 scalar_t__ BWRITERSPR_TEMP ; 
 int D3DSIO_MOV ; 
 int D3DSIO_TEXCOORD ; 
 int D3DSI_OPCODE_MASK ; 
 void* E_INVALIDARG ; 
 scalar_t__ T0_REG ; 
 scalar_t__ T1_REG ; 
 scalar_t__ T2_REG ; 
 scalar_t__ T3_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bc_writer*,struct instruction const*,int,struct bytecode_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct bc_writer*,TYPE_3__*,struct bytecode_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_writer*,struct instruction const*,int,struct bytecode_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct bc_writer*,TYPE_3__*,struct bytecode_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bc_writer*,TYPE_2__*,struct bytecode_buffer*) ; 

__attribute__((used)) static void FUNC6(struct bc_writer *This,
                                const struct instruction *instr,
                                struct bytecode_buffer *buffer) {
    DWORD token = D3DSIO_MOV & D3DSI_OPCODE_MASK;

    if(instr->dst.type == BWRITERSPR_TEMP && instr->src[0].type == BWRITERSPR_INPUT) {
        if((instr->dst.regnum == T0_REG && instr->src[0].regnum == This->t_regnum[0]) ||
           (instr->dst.regnum == T1_REG && instr->src[0].regnum == This->t_regnum[1]) ||
           (instr->dst.regnum == T2_REG && instr->src[0].regnum == This->t_regnum[2]) ||
           (instr->dst.regnum == T3_REG && instr->src[0].regnum == This->t_regnum[3])) {
            if(instr->dstmod & BWRITERSPDM_SATURATE) {
                This->funcs->opcode(This, instr, D3DSIO_TEXCOORD & D3DSI_OPCODE_MASK, buffer);
                /* Remove the SATURATE flag, it's implicit to the instruction */
                This->funcs->dstreg(This, &instr->dst, buffer, instr->shift, instr->dstmod & (~BWRITERSPDM_SATURATE));
                return;
            } else {
                FUNC0("A varying -> temp copy is only supported with the SATURATE modifier in <=ps_1_3\n");
                This->state = E_INVALIDARG;
                return;
            }
        } else if(instr->src[0].regnum == This->v_regnum[0] ||
                  instr->src[0].regnum == This->v_regnum[1]) {
            /* Handled by the normal mov below. Just drop out of the if condition */
        } else {
            FUNC0("Unsupported varying -> temp mov in <= ps_1_3\n");
            This->state = E_INVALIDARG;
            return;
        }
    }

    This->funcs->opcode(This, instr, token, buffer);
    This->funcs->dstreg(This, &instr->dst, buffer, instr->shift, instr->dstmod);
    This->funcs->srcreg(This, &instr->src[0], buffer);
}