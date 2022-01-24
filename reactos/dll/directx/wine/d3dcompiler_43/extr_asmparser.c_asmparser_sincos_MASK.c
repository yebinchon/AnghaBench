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
struct src_regs {int count; int /*<<< orphan*/ * reg; } ;
struct shader_reg {int dummy; } ;
struct instruction {scalar_t__ comptype; void* shift; void* dstmod; int /*<<< orphan*/  opcode; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  shader; TYPE_1__* funcs; int /*<<< orphan*/  line_no; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* srcreg ) (struct asm_parser*,struct instruction*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef  void* DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSIO_SINCOS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct instruction*) ; 
 struct instruction* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct asm_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asm_parser*,struct instruction*,struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC6 (struct asm_parser*,struct instruction*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct asm_parser*,struct instruction*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct asm_parser*,struct instruction*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct asm_parser *This, DWORD mod, DWORD shift,
                             const struct shader_reg *dst,
                             const struct src_regs *srcs) {
    struct instruction *instr;

    if(!srcs || srcs->count != 3) {
        FUNC3(This, "Line %u: sincos (vs 2) has an incorrect number of source registers\n", This->line_no);
        FUNC4(&This->status, PARSE_ERR);
        return;
    }

    instr = FUNC2(3);
    if(!instr) {
        FUNC0("Error allocating memory for the instruction\n");
        FUNC4(&This->status, PARSE_ERR);
        return;
    }

    instr->opcode = BWRITERSIO_SINCOS;
    instr->dstmod = mod;
    instr->shift = shift;
    instr->comptype = 0;

    This->funcs->dstreg(This, instr, dst);
    This->funcs->srcreg(This, instr, 0, &srcs->reg[0]);
    This->funcs->srcreg(This, instr, 1, &srcs->reg[1]);
    This->funcs->srcreg(This, instr, 2, &srcs->reg[2]);

    if(!FUNC1(This->shader, instr)) {
        FUNC0("Out of memory\n");
        FUNC4(&This->status, PARSE_ERR);
    }
}