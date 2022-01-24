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
struct instruction {int /*<<< orphan*/  has_dst; struct shader_reg dst; int /*<<< orphan*/  shift; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  line_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct asm_parser*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shader_reg const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asm_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shader_reg const*) ; 
 int /*<<< orphan*/  ps_3_reg_allowed ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asm_parser *This,
                                  struct instruction *instr,
                                  const struct shader_reg *dst) {
    if(!FUNC1(dst, ps_3_reg_allowed)) {
        FUNC0(This, "Line %u: Destination register %s not supported in PS 3.0\n",
                          This->line_no,
                          FUNC3(dst));
        FUNC4(&This->status, PARSE_ERR);
    }
    FUNC2(This, instr->shift);
    instr->dst = *dst;
    instr->has_dst = TRUE;
}