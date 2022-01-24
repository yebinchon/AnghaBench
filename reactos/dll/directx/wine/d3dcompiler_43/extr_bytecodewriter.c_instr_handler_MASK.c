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
struct instruction {int /*<<< orphan*/  dstmod; int /*<<< orphan*/  shift; int /*<<< orphan*/  dst; scalar_t__ has_dst; int /*<<< orphan*/  opcode; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dstreg ) (struct bc_writer*,int /*<<< orphan*/ *,struct bytecode_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* opcode ) (struct bc_writer*,struct instruction const*,int /*<<< orphan*/ ,struct bytecode_buffer*) ;} ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bc_writer*,struct instruction const*,int /*<<< orphan*/ ,struct bytecode_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct bc_writer*,int /*<<< orphan*/ *,struct bytecode_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bc_writer*,struct instruction const*,struct bytecode_buffer*) ; 

__attribute__((used)) static void FUNC4(struct bc_writer *This,
                          const struct instruction *instr,
                          struct bytecode_buffer *buffer) {
    DWORD token = FUNC0(instr->opcode);

    This->funcs->opcode(This, instr, token, buffer);
    if(instr->has_dst) This->funcs->dstreg(This, &instr->dst, buffer, instr->shift, instr->dstmod);
    FUNC3(This, instr, buffer);
}