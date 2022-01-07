
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct TYPE_5__ {int csr_reg_str; int csr; int dest_reg_str; int dest_reg; int src0_reg_str; int src0_reg; int src1_reg_str; int src1_reg; TYPE_1__ op_decode; } ;
typedef TYPE_2__ RAsmLm32Instruction ;


 int csr_number_to_string (int ,int ) ;
 int reg_number_to_string (int ,int ) ;



__attribute__((used)) static int write_reg_names_to_struct(RAsmLm32Instruction *instr) {
 switch (instr->op_decode.type) {
 case 132:
 case 133:
 case 131:
 case 130:
 case 128:
  if (reg_number_to_string (instr->dest_reg, instr->dest_reg_str)) {
   return -1;
  }
  if (reg_number_to_string (instr->src0_reg, instr->src0_reg_str)) {
   return -1;
  }
  break;
 case 136:
  if (reg_number_to_string (instr->src0_reg, instr->src0_reg_str)) {
   return -1;
  }
  break;
 case 129:
  if (reg_number_to_string (instr->dest_reg, instr->dest_reg_str)) {
   return -1;
  }
  if (reg_number_to_string (instr->src0_reg, instr->src0_reg_str)) {
   return -1;
  }
  if (reg_number_to_string (instr->src1_reg, instr->src1_reg_str)) {
   return -1;
  }
  break;
 case 134:
  if (reg_number_to_string (instr->src0_reg, instr->src0_reg_str)) {
   return -1;
  }
  if (csr_number_to_string (instr->csr, instr->csr_reg_str)) {
   return -1;
  }
  break;
 case 138:
  if (reg_number_to_string (instr->dest_reg, instr->dest_reg_str)) {
   return -1;
  }
  if (csr_number_to_string (instr->csr, instr->csr_reg_str)) {
   return -1;
  }
  break;
 case 135:
 case 137:
  break;
 default:
  return -1;
 }
 return 0;
}
