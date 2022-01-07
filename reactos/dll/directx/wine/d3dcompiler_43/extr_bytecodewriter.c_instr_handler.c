
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct instruction {int dstmod; int shift; int dst; scalar_t__ has_dst; int opcode; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* dstreg ) (struct bc_writer*,int *,struct bytecode_buffer*,int ,int ) ;int (* opcode ) (struct bc_writer*,struct instruction const*,int ,struct bytecode_buffer*) ;} ;
typedef int DWORD ;


 int d3d9_opcode (int ) ;
 int stub1 (struct bc_writer*,struct instruction const*,int ,struct bytecode_buffer*) ;
 int stub2 (struct bc_writer*,int *,struct bytecode_buffer*,int ,int ) ;
 int write_srcregs (struct bc_writer*,struct instruction const*,struct bytecode_buffer*) ;

__attribute__((used)) static void instr_handler(struct bc_writer *This,
                          const struct instruction *instr,
                          struct bytecode_buffer *buffer) {
    DWORD token = d3d9_opcode(instr->opcode);

    This->funcs->opcode(This, instr, token, buffer);
    if(instr->has_dst) This->funcs->dstreg(This, &instr->dst, buffer, instr->shift, instr->dstmod);
    write_srcregs(This, instr, buffer);
}
