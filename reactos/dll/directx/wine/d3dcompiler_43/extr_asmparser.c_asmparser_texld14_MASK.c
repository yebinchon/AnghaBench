#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct src_regs {int count; int /*<<< orphan*/ * reg; } ;
struct shader_reg {int /*<<< orphan*/  regnum; } ;
struct instruction {TYPE_3__* src; scalar_t__ comptype; void* shift; void* dstmod; int /*<<< orphan*/  opcode; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  shader; TYPE_1__* funcs; int /*<<< orphan*/  line_no; } ;
struct TYPE_5__ {int /*<<< orphan*/  swizzle; } ;
struct TYPE_6__ {int /*<<< orphan*/ * rel_reg; int /*<<< orphan*/  srcmod; TYPE_2__ u; int /*<<< orphan*/  regnum; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* srcreg ) (struct asm_parser*,struct instruction*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef  void* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSIO_TEX ; 
 int /*<<< orphan*/  BWRITERSPR_SAMPLER ; 
 int /*<<< orphan*/  BWRITERSPSM_NONE ; 
 int /*<<< orphan*/  BWRITERVS_NOSWIZZLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct instruction*) ; 
 struct instruction* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct asm_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct asm_parser*,struct instruction*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC7 (struct asm_parser*,struct instruction*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct asm_parser *This, DWORD mod, DWORD shift,
                              const struct shader_reg *dst,
                              const struct src_regs *srcs) {
    struct instruction *instr;

    if(!srcs || srcs->count != 1) {
        FUNC4(This, "Line %u: texld (PS 1.4) has a wrong number of source registers\n", This->line_no);
        FUNC5(&This->status, PARSE_ERR);
        return;
    }

    instr = FUNC3(2);
    if(!instr) {
        FUNC0("Error allocating memory for the instruction\n");
        FUNC5(&This->status, PARSE_ERR);
        return;
    }

    /* This code is recording a texld instruction, not tex. However,
     * texld borrows the opcode of tex
     */
    instr->opcode = BWRITERSIO_TEX;
    instr->dstmod = mod;
    instr->shift = shift;
    instr->comptype = 0;

    This->funcs->dstreg(This, instr, dst);
    This->funcs->srcreg(This, instr, 0, &srcs->reg[0]);

    /* The 2nd source register is the sampler register with the
     * destination's regnum
     */
    FUNC1(&instr->src[1], sizeof(instr->src[1]));
    instr->src[1].type = BWRITERSPR_SAMPLER;
    instr->src[1].regnum = dst->regnum;
    instr->src[1].u.swizzle = BWRITERVS_NOSWIZZLE;
    instr->src[1].srcmod = BWRITERSPSM_NONE;
    instr->src[1].rel_reg = NULL;

    if(!FUNC2(This->shader, instr)) {
        FUNC0("Out of memory\n");
        FUNC5(&This->status, PARSE_ERR);
    }
}