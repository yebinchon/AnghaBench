
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {scalar_t__ has_predicate; scalar_t__ comptype; int num_srcs; scalar_t__ has_dst; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {int dummy; } ;
typedef int DWORD ;


 int D3DSHADER_INSTRUCTION_PREDICATED ;
 int D3DSI_INSTLENGTH_SHIFT ;
 int d3d9_comparetype (scalar_t__) ;
 int instrlen (struct instruction const*,int ,int) ;
 int put_dword (struct bytecode_buffer*,int) ;

__attribute__((used)) static void sm_2_opcode(struct bc_writer *This,
                        const struct instruction *instr,
                        DWORD token, struct bytecode_buffer *buffer) {

    int dsts = instr->has_dst ? 1 : 0;
    token |= instrlen(instr, instr->num_srcs, dsts) << D3DSI_INSTLENGTH_SHIFT;
    if(instr->comptype)
        token |= (d3d9_comparetype(instr->comptype) << 16) & (0xf << 16);
    if(instr->has_predicate)
        token |= D3DSHADER_INSTRUCTION_PREDICATED;
    put_dword(buffer,token);
}
