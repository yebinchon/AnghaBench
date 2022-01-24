#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct shader_reg {int dummy; } ;
struct instruction {int /*<<< orphan*/  has_dst; int /*<<< orphan*/  dst; scalar_t__ comptype; scalar_t__ shift; scalar_t__ dstmod; int /*<<< orphan*/  opcode; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWRITERSIO_TEXKILL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct instruction*) ; 
 struct instruction* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_reg const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asm_parser *This,
                              const struct shader_reg *dst) {
    struct instruction *instr = FUNC2(0);

    if(!instr) {
        FUNC0("Error allocating memory for the instruction\n");
        FUNC4(&This->status, PARSE_ERR);
        return;
    }

    instr->opcode = BWRITERSIO_TEXKILL;
    instr->dstmod = 0;
    instr->shift = 0;
    instr->comptype = 0;

    /* Do not run the dst register through the normal
     * register conversion. If used with ps_1_0 to ps_1_3
     * the texture coordinate from that register is used,
     * not the temporary register value. In ps_1_4 and
     * ps_2_0 t0 is always a varying and temporaries can
     * be used with texkill.
     */
    instr->dst = FUNC3(dst, TRUE);
    instr->has_dst = TRUE;

    if(!FUNC1(This->shader, instr)) {
        FUNC0("Out of memory\n");
        FUNC4(&This->status, PARSE_ERR);
    }
}