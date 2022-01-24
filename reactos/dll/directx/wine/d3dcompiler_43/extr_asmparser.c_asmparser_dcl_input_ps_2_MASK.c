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
struct shader_reg {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  writemask; } ;
struct TYPE_5__ {TYPE_1__ u; int /*<<< orphan*/  regnum; } ;
struct instruction {TYPE_2__ dst; scalar_t__ shift; int /*<<< orphan*/  dstmod; } ;
struct asm_parser {int /*<<< orphan*/  status; int /*<<< orphan*/  shader; TYPE_3__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* dstreg ) (struct asm_parser*,struct instruction*,struct shader_reg const*) ;} ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PARSE_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct asm_parser*,struct instruction*,struct shader_reg const*) ; 

__attribute__((used)) static void FUNC4(struct asm_parser *This, DWORD usage, DWORD num,
                                     DWORD mod, const struct shader_reg *reg) {
    struct instruction instr;

    if(!This->shader) return;
    instr.dstmod = mod;
    instr.shift = 0;
    This->funcs->dstreg(This, &instr, reg);
    if(!FUNC1(This->shader, usage, num, mod, FALSE, instr.dst.regnum, instr.dst.u.writemask, FALSE)) {
        FUNC0("Out of memory\n");
        FUNC2(&This->status, PARSE_ERR);
    }
}