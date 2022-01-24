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
struct shader_reg {int /*<<< orphan*/  srcmod; } ;
struct instruction {struct shader_reg* src; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  line_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct asm_parser*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asm_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shader_reg const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_reg const*) ; 
 struct shader_reg FUNC4 (struct shader_reg const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_1_4_reg_allowed ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct asm_parser *This,
                                    struct instruction *instr, int num,
                                    const struct shader_reg *src) {
    struct shader_reg reg;

    if(!FUNC2(src, ps_1_4_reg_allowed)) {
        FUNC0(This, "Line %u: Source register %s not supported in PS 1.4\n",
                          This->line_no,
                          FUNC3(src));
        FUNC5(&This->status, PARSE_ERR);
    }
    FUNC1(This, src->srcmod);
    reg = FUNC4(src, TRUE);
    instr->src[num] = reg;
}