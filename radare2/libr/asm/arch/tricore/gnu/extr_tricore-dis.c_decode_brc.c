
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* cexp; int opcode; int* regs; TYPE_1__* code; } ;
struct TYPE_3__ {int nr_operands; int* fields; } ;





 TYPE_2__ dec_insn ;

__attribute__((used)) static void
decode_brc ()
{
  int i;

  for (i = 0; i < dec_insn.code->nr_operands; ++i) {
   switch (dec_insn.code->fields[i]) {
   case 129:
    dec_insn.cexp[i] = (dec_insn.opcode & 0x7fff0000) >> 16;
    break;

   case 130:
    dec_insn.cexp[i] = (dec_insn.opcode & 0x0000f000) >> 12;
    break;

   case 128:
    dec_insn.regs[i] = (dec_insn.opcode & 0x00000f00) >> 8;
    break;
   }
  }
}
