
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_7__ {int value; TYPE_2__* opcode; TYPE_1__* operands; } ;
typedef TYPE_3__ aarch64_inst ;
struct TYPE_6__ {int iclass; int ** qualifiers_list; } ;
struct TYPE_5__ {int qualifier; } ;


 int AARCH64_MAX_OPND_NUM ;
 int FALSE ;
 int FLD_SVE_M_14 ;
 int FLD_SVE_M_16 ;
 int FLD_SVE_M_4 ;
 int FLD_SVE_sz ;
 int FLD_SVE_tszh ;
 int FLD_SVE_tszl_19 ;
 int FLD_SVE_tszl_8 ;
 int FLD_imm5 ;
 int FLD_size ;
 int TRUE ;
 int extract_field (int ,int,int ) ;
 int extract_fields (int,int ,int,int ,int ) ;
__attribute__((used)) static bfd_boolean
aarch64_decode_variant_using_iclass (aarch64_inst *inst)
{
  int i, variant;

  variant = 0;
  switch (inst->opcode->iclass)
    {
    case 139:
      variant = extract_fields (inst->value, 0, 2, FLD_size, FLD_SVE_M_14);
      break;

    case 138:
      i = extract_fields (inst->value, 0, 2, FLD_SVE_tszh, FLD_imm5);
      if ((i & 31) == 0)
 return FALSE;
      while ((i & 1) == 0)
 {
   i >>= 1;
   variant += 1;
 }
      break;

    case 137:

      if ((inst->value & 0x20600) == 0x600)
 variant = 0;
      else if ((inst->value & 0x20400) == 0x400)
 variant = 1;
      else if ((inst->value & 0x20000) == 0)
 variant = 2;
      else
 variant = 3;
      break;

    case 136:

      break;

    case 135:
      variant = extract_fields (inst->value, 0, 2, FLD_size, FLD_SVE_M_16);
      break;

    case 134:
      variant = extract_field (FLD_SVE_M_4, inst->value, 0);
      break;

    case 133:
      i = extract_fields (inst->value, 0, 2, FLD_SVE_tszh, FLD_SVE_tszl_8);
    sve_shift:
      if (i == 0)
 return FALSE;
      while (i != 1)
 {
   i >>= 1;
   variant += 1;
 }
      break;

    case 132:
      i = extract_fields (inst->value, 0, 2, FLD_SVE_tszh, FLD_SVE_tszl_19);
      goto sve_shift;

    case 131:
      variant = extract_field (FLD_size, inst->value, 0);
      if (variant >= 3)
 return FALSE;
      break;

    case 130:
      variant = extract_field (FLD_size, inst->value, 0);
      break;

    case 129:
      i = extract_field (FLD_size, inst->value, 0);
      if (i < 1)
 return FALSE;
      variant = i - 1;
      break;

    case 128:
      variant = extract_field (FLD_SVE_sz, inst->value, 0);
      break;

    default:

      return TRUE;
    }

  for (i = 0; i < AARCH64_MAX_OPND_NUM; ++i)
    inst->operands[i].qualifier = inst->opcode->qualifiers_list[variant][i];
  return TRUE;
}
