
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_bundle_bits ;
struct tilegx_operand {int (* insert ) (int) ;} ;
struct tilegx_opcode {int num_operands; size_t** operands; int * fixed_bit_values; } ;
struct jit_instr {size_t pipe; int* operand_value; struct tilegx_opcode* opcode; } ;


 int stub1 (int) ;
 struct tilegx_operand* tilegx_operands ;

tilegx_bundle_bits get_bundle_bit(struct jit_instr *inst)
{
 int i, val;
 const struct tilegx_opcode* opcode = inst->opcode;
 tilegx_bundle_bits bits = opcode->fixed_bit_values[inst->pipe];

 const struct tilegx_operand* operand = ((void*)0);
 for (i = 0; i < opcode->num_operands; i++) {
  operand = &tilegx_operands[opcode->operands[inst->pipe][i]];
  val = inst->operand_value[i];

  bits |= operand->insert(val);
 }

 return bits;
}
