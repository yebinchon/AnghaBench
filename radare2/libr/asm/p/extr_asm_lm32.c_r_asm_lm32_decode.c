
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_15__ {int type; } ;
struct TYPE_16__ {size_t op; int pseudoInstruction; int value; void* immediate; void* csr; void* dest_reg; void* src0_reg; void* src1_reg; TYPE_14__ op_decode; } ;
typedef TYPE_1__ RAsmLm32Instruction ;


 int RAsmLm32Imm16SignBitPos ;
 int RAsmLm32Imm26SignBitPos ;
 TYPE_14__* RAsmLm32OpcodeList ;
 size_t RAsmLm32OpcodeNumber ;

 void* extract_imm16 (int ) ;
 void* extract_imm26 (int ) ;
 void* extract_imm5 (int ) ;
 size_t extract_opcode (int ) ;
 void* extract_reg_u (int ) ;
 void* extract_reg_v (int ) ;
 void* extract_reg_w (int ) ;

 int is_invalid_imm5_instr (TYPE_1__*) ;
 int is_invalid_one_reg_instr (TYPE_1__*) ;
 int is_invalid_two_reg_instr (TYPE_1__*) ;
 int is_invalid_wcsr_instr (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_mv (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_mvhi (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_mvi (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_nop (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_not (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_raise (TYPE_1__*) ;
 scalar_t__ is_pseudo_instr_ret (TYPE_1__*) ;
 void* shift_and_signextend (int,int ,void*) ;



__attribute__((used)) static int r_asm_lm32_decode(RAsmLm32Instruction *instr) {
 instr->op = extract_opcode (instr->value);
 if (instr->op >= RAsmLm32OpcodeNumber) {
  return -1;
 }
 instr->op_decode = RAsmLm32OpcodeList[instr->op];

 switch (instr->op_decode.type) {
 case 133:
  instr->dest_reg = extract_reg_v (instr->value);
  instr->src0_reg = extract_reg_u (instr->value);
  instr->immediate = shift_and_signextend (0, RAsmLm32Imm16SignBitPos,
    extract_imm16 (instr->value));
  break;
 case 134:
  instr->dest_reg = extract_reg_v (instr->value);
  instr->src0_reg = extract_reg_u (instr->value);
  instr->immediate = shift_and_signextend (2, RAsmLm32Imm16SignBitPos,
    extract_imm16 (instr->value));
  break;
 case 132:
  instr->dest_reg = extract_reg_v (instr->value);
  instr->src0_reg = extract_reg_u (instr->value);
  instr->immediate = extract_imm16 (instr->value);
  break;
 case 131:
  if (is_invalid_imm5_instr (instr)) {
   return -1;
  }
  instr->dest_reg = extract_reg_v (instr->value);
  instr->src0_reg = extract_reg_u (instr->value);
  instr->immediate = extract_imm5 (instr->value);
  break;
 case 136:
  if (is_invalid_imm5_instr (instr)) {
   return -1;
  }


  instr->immediate = extract_imm5 (instr->value);
  break;
 case 137:
  if (is_invalid_one_reg_instr (instr)) {
   return -1;
  }
  instr->src0_reg = extract_reg_u (instr->value);
  break;
 case 128:
  if (is_invalid_two_reg_instr (instr)) {
   return -1;
  }
  instr->dest_reg = extract_reg_w (instr->value);
  instr->src0_reg = extract_reg_u (instr->value);
  break;
 case 129:
  instr->dest_reg = extract_reg_w (instr->value);
  instr->src0_reg = extract_reg_v (instr->value);
  instr->src1_reg = extract_reg_u (instr->value);
  break;
 case 135:
  if (is_invalid_wcsr_instr (instr)) {
   return -1;
  }
  instr->src0_reg = extract_reg_v (instr->value);
  instr->csr = extract_reg_u (instr->value);
  break;
 case 139:

  if (is_invalid_two_reg_instr (instr)) {
   return -1;
  }
  instr->dest_reg = extract_reg_w (instr->value);
  instr->csr = extract_reg_u (instr->value);
  break;
 case 138:
  instr->immediate = shift_and_signextend (2, RAsmLm32Imm26SignBitPos,
    extract_imm26 (instr->value));
  break;
 case 130:
 default:
  return -1;
 }


 instr->pseudoInstruction = is_pseudo_instr_ret (instr) || is_pseudo_instr_mv (instr) ||
   is_pseudo_instr_mvhi (instr) || is_pseudo_instr_not (instr) || is_pseudo_instr_mvi (instr) ||
   is_pseudo_instr_nop (instr) || is_pseudo_instr_raise (instr);

 return 0;
}
