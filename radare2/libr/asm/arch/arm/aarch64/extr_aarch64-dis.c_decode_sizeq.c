
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum aarch64_opnd_qualifier { ____Placeholder_aarch64_opnd_qualifier } aarch64_opnd_qualifier ;
typedef enum aarch64_field_kind { ____Placeholder_aarch64_field_kind } aarch64_field_kind ;
struct TYPE_6__ {int value; TYPE_1__* operands; TYPE_4__* opcode; } ;
typedef TYPE_2__ aarch64_inst ;
typedef int aarch64_insn ;
struct TYPE_7__ {scalar_t__ iclass; int mask; int qualifiers_list; } ;
struct TYPE_5__ {int qualifier; } ;


 int AARCH64_MAX_QLF_SEQ_NUM ;
 int AARCH64_OPND_QLF_NIL ;
 int DEBUG_TRACE (char*,int,...) ;
 int FLD_Q ;
 int FLD_size ;
 int FLD_vldst_size ;
 int aarch64_get_qualifier_name (int) ;
 int aarch64_select_operand_for_sizeq_field_coding (TYPE_4__*) ;
 scalar_t__ asisdlse ;
 scalar_t__ asisdlsep ;
 scalar_t__ asisdlso ;
 scalar_t__ asisdlsop ;
 scalar_t__ debug_dump ;
 int extract_fields (int,int,int,int,int ) ;
 int get_operand_possible_qualifiers (int,int ,int*) ;
 int get_qualifier_from_partial_encoding (int,int*,int) ;
 int get_vreg_qualifier_from_value (int) ;

__attribute__((used)) static int
decode_sizeq (aarch64_inst *inst)
{
  int idx;
  enum aarch64_opnd_qualifier qualifier;
  aarch64_insn code;
  aarch64_insn value, mask;
  enum aarch64_field_kind fld_sz;
  enum aarch64_opnd_qualifier candidates[AARCH64_MAX_QLF_SEQ_NUM];

  if (inst->opcode->iclass == asisdlse
     || inst->opcode->iclass == asisdlsep
     || inst->opcode->iclass == asisdlso
     || inst->opcode->iclass == asisdlsop)
    fld_sz = FLD_vldst_size;
  else
    fld_sz = FLD_size;

  code = inst->value;
  value = extract_fields (code, inst->opcode->mask, 2, fld_sz, FLD_Q);



  mask = extract_fields (~inst->opcode->mask, 0, 2, fld_sz, FLD_Q);




  idx = aarch64_select_operand_for_sizeq_field_coding (inst->opcode);
  DEBUG_TRACE ("key idx: %d", idx);



  if (mask == 0x7)
    {
      inst->operands[idx].qualifier = get_vreg_qualifier_from_value (value);
      return 1;
    }

  get_operand_possible_qualifiers (idx, inst->opcode->qualifiers_list,
       candidates);
  qualifier = get_qualifier_from_partial_encoding (value, candidates, mask);

  if (qualifier == AARCH64_OPND_QLF_NIL)
    return 0;

  inst->operands[idx].qualifier = qualifier;
  return 1;
}
