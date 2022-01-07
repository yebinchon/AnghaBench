
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct instruction {scalar_t__ coissue; } ;
struct bytecode_buffer {int dummy; } ;
struct bc_writer {int dummy; } ;
typedef int DWORD ;


 int D3DSI_COISSUE ;
 int put_dword (struct bytecode_buffer*,int ) ;

__attribute__((used)) static void sm_1_x_opcode(struct bc_writer *This,
                          const struct instruction *instr,
                          DWORD token, struct bytecode_buffer *buffer) {

    if(instr->coissue){
        token |= D3DSI_COISSUE;
    }
    put_dword(buffer, token);
}
