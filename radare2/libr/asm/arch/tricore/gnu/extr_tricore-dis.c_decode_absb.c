
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* cexp; int opcode; TYPE_1__* code; } ;
struct TYPE_3__ {int nr_operands; int* fields; } ;





 TYPE_2__ dec_insn ;
 int extract_off18 () ;

__attribute__((used)) static void
decode_absb ()
{
  int i;

  for (i = 0; i < dec_insn.code->nr_operands; ++i) {
   switch (dec_insn.code->fields[i]) {
   case 128:
    dec_insn.cexp[i] = extract_off18 ();
    break;

   case 130:
    dec_insn.cexp[i] = (dec_insn.opcode & 0x800) >> 11;
    break;

   case 129:
    dec_insn.cexp[i] = (dec_insn.opcode & 0x700) >> 8;
    break;
   }
  }
}
