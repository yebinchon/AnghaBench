
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
struct TYPE_13__ {TYPE_4__* opcode; TYPE_1__* operands; int value; int cond; } ;
typedef TYPE_2__ aarch64_inst ;
typedef int aarch64_insn ;
struct TYPE_14__ {int member_1; int member_0; } ;
typedef TYPE_3__ aarch64_field ;
struct TYPE_15__ {int flags; int * operands; int mask; int qualifiers_list; } ;
struct TYPE_12__ {void* qualifier; } ;


 int AARCH64_MAX_QLF_SEQ_NUM ;
 scalar_t__ AARCH64_OPND_CLASS_INT_REG ;
 scalar_t__ AARCH64_OPND_CLASS_SIMD_REG ;
 void* AARCH64_OPND_QLF_S_D ;
 void* AARCH64_OPND_QLF_S_H ;
 void* AARCH64_OPND_QLF_S_S ;
 void* AARCH64_OPND_QLF_W ;
 void* AARCH64_OPND_QLF_X ;
 int AARCH64_OPND_Rt ;
 int FLD_N ;
 int FLD_Q ;
 int FLD_cond2 ;
 int FLD_imm5 ;
 int FLD_lse_sz ;
 int FLD_opc ;
 int FLD_sf ;
 int FLD_size ;
 int FLD_type ;
 int F_COND ;
 int F_FPTYPE ;
 int F_GPRSIZE_IN_Q ;
 int F_LDS_SIZE ;
 int F_LSE_SZ ;
 int F_MISC ;
 int F_N ;
 int F_SF ;
 int F_SIZEQ ;
 int F_SSIZE ;
 int F_T ;
 scalar_t__ aarch64_get_operand_class (int ) ;
 int aarch64_operand_index (int *,int ) ;
 int assert (int) ;
 int decode_sizeq (TYPE_2__*) ;
 int do_misc_decoding (TYPE_2__*) ;
 int extract_field (int ,int ,int ) ;
 int extract_field_2 (TYPE_3__*,int ,int ) ;
 int gen_sub_field (int ,int ,int,TYPE_3__*) ;
 int get_cond_from_value (int) ;
 void* get_greg_qualifier_from_value (int) ;
 int get_operand_possible_qualifiers (int,int ,int*) ;
 void* get_qualifier_from_partial_encoding (int,int*,int) ;
 void* get_sreg_qualifier_from_value (int) ;
 void* get_vreg_qualifier_from_value (int) ;
 int select_operand_for_fptype_field_coding (TYPE_4__*) ;
 int select_operand_for_scalar_size_field_coding (TYPE_4__*) ;
 int select_operand_for_sf_field_coding (TYPE_4__*) ;

__attribute__((used)) static int
do_special_decoding (aarch64_inst *inst)
{
  int idx;
  aarch64_insn value;

  if (inst->opcode->flags & F_COND)
    {
      value = extract_field (FLD_cond2, inst->value, 0);
      inst->cond = get_cond_from_value (value);
    }

  if (inst->opcode->flags & F_SF)
    {
      idx = select_operand_for_sf_field_coding (inst->opcode);
      value = extract_field (FLD_sf, inst->value, 0);
      inst->operands[idx].qualifier = get_greg_qualifier_from_value (value);
      if ((inst->opcode->flags & F_N)
   && extract_field (FLD_N, inst->value, 0) != value)
 return 0;
    }

  if (inst->opcode->flags & F_LSE_SZ)
    {
      idx = select_operand_for_sf_field_coding (inst->opcode);
      value = extract_field (FLD_lse_sz, inst->value, 0);
      inst->operands[idx].qualifier = get_greg_qualifier_from_value (value);
    }

  if (inst->opcode->flags & F_SIZEQ)
    return decode_sizeq (inst);

  if (inst->opcode->flags & F_FPTYPE)
    {
      idx = select_operand_for_fptype_field_coding (inst->opcode);
      value = extract_field (FLD_type, inst->value, 0);
      switch (value)
 {
 case 0: inst->operands[idx].qualifier = AARCH64_OPND_QLF_S_S; break;
 case 1: inst->operands[idx].qualifier = AARCH64_OPND_QLF_S_D; break;
 case 3: inst->operands[idx].qualifier = AARCH64_OPND_QLF_S_H; break;
 default: return 0;
 }
    }

  if (inst->opcode->flags & F_SSIZE)
    {


      aarch64_insn mask;
      enum aarch64_opnd_qualifier candidates[AARCH64_MAX_QLF_SEQ_NUM];
      idx = select_operand_for_scalar_size_field_coding (inst->opcode);
      value = extract_field (FLD_size, inst->value, inst->opcode->mask);
      mask = extract_field (FLD_size, ~inst->opcode->mask, 0);


      if (mask == 0x3)
 inst->operands[idx].qualifier = get_sreg_qualifier_from_value (value);
      else
 {
   get_operand_possible_qualifiers (idx, inst->opcode->qualifiers_list,
        candidates);
   inst->operands[idx].qualifier
     = get_qualifier_from_partial_encoding (value, candidates, mask);
 }
    }

  if (inst->opcode->flags & F_T)
    {

      int num = 0;
      unsigned val, Q;
      assert (aarch64_get_operand_class (inst->opcode->operands[0])
       == AARCH64_OPND_CLASS_SIMD_REG);
      val = extract_field (FLD_imm5, inst->value, 0);
      while ((val & 0x1) == 0 && ++num <= 3)
 val >>= 1;
      if (num > 3)
 return 0;
      Q = (unsigned) extract_field (FLD_Q, inst->value, inst->opcode->mask);
      inst->operands[0].qualifier =
 get_vreg_qualifier_from_value ((num << 1) | Q);
    }

  if (inst->opcode->flags & F_GPRSIZE_IN_Q)
    {


      idx = aarch64_operand_index (inst->opcode->operands, AARCH64_OPND_Rt);
      if (idx == -1)
 {


   assert (aarch64_get_operand_class (inst->opcode->operands[0])
    == AARCH64_OPND_CLASS_INT_REG);
   idx = 0;
 }
      assert (idx == 0 || idx == 1);
      value = extract_field (FLD_Q, inst->value, 0);
      inst->operands[idx].qualifier = get_greg_qualifier_from_value (value);
    }

  if (inst->opcode->flags & F_LDS_SIZE)
    {
      aarch64_field field = {0, 0};
      assert (aarch64_get_operand_class (inst->opcode->operands[0])
       == AARCH64_OPND_CLASS_INT_REG);
      gen_sub_field (FLD_opc, 0, 1, &field);
      value = extract_field_2 (&field, inst->value, 0);
      inst->operands[0].qualifier
 = value ? AARCH64_OPND_QLF_W : AARCH64_OPND_QLF_X;
    }


  if (inst->opcode->flags & F_MISC)
    return do_misc_decoding (inst);

  return 1;
}
