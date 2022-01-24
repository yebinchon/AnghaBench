#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  swizzle; } ;
struct shader_reg {int /*<<< orphan*/ * rel_reg; int /*<<< orphan*/  srcmod; TYPE_2__ u; int /*<<< orphan*/  regnum; int /*<<< orphan*/  type; } ;
struct instruction {struct shader_reg* src; scalar_t__ comptype; void* shift; void* dstmod; int /*<<< orphan*/  opcode; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  shader; TYPE_1__* funcs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef  void* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSIO_TEX ; 
 int /*<<< orphan*/  BWRITERSPR_SAMPLER ; 
 int /*<<< orphan*/  BWRITERSPSM_NONE ; 
 int /*<<< orphan*/  BWRITERVS_NOSWIZZLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC1 (struct shader_reg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct instruction*) ; 
 struct instruction* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asm_parser*,struct instruction*,struct shader_reg const*) ; 

__attribute__((used)) static void FUNC6(struct asm_parser *This, DWORD mod, DWORD shift,
                                const struct shader_reg *dst,
                                const struct shader_reg *src0) {
    struct instruction *instr = FUNC3(2);

    if(!instr) {
        FUNC0("Error allocating memory for the instruction\n");
        FUNC4(&This->status, PARSE_ERR);
        return;
    }

    instr->opcode = BWRITERSIO_TEX;
    instr->dstmod = mod;
    instr->shift = shift;
    instr->comptype = 0;
    /* The dest register can be mapped normally to a temporary register */
    This->funcs->dstreg(This, instr, dst);
    /* Use the src passed as parameter by the specific instruction handler */
    instr->src[0] = *src0;

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
        FUNC4(&This->status, PARSE_ERR);
    }
}