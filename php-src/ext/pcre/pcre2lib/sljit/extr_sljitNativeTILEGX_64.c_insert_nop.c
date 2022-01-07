
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t tilegx_mnemonic ;
struct tilegx_opcode {int dummy; } ;
struct TYPE_4__ {int line; scalar_t__ output_registers; scalar_t__ input_registers; int pipe; struct tilegx_opcode const* opcode; } ;


 int get_any_valid_pipe (struct tilegx_opcode const*) ;
 TYPE_1__* inst_buf ;
 int inst_buf_index ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 struct tilegx_opcode* tilegx_opcodes ;

void insert_nop(tilegx_mnemonic opc, int line)
{
 const struct tilegx_opcode* opcode = ((void*)0);

 memmove(&inst_buf[1], &inst_buf[0], inst_buf_index * sizeof inst_buf[0]);

 opcode = &tilegx_opcodes[opc];
 inst_buf[0].opcode = opcode;
 inst_buf[0].pipe = get_any_valid_pipe(opcode);
 inst_buf[0].input_registers = 0;
 inst_buf[0].output_registers = 0;
 inst_buf[0].line = line;
 ++inst_buf_index;
}
