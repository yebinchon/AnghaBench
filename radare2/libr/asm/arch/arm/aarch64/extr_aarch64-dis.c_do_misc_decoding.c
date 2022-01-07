
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int value; TYPE_1__* opcode; } ;
typedef TYPE_2__ aarch64_inst ;
struct TYPE_7__ {int op; } ;


 int FLD_SVE_Pd ;
 int FLD_SVE_Pg4_10 ;
 int FLD_SVE_Pm ;
 int FLD_SVE_Pn ;
 int FLD_SVE_Zd ;
 int FLD_SVE_Zm_16 ;
 int FLD_SVE_Zn ;
 int FLD_SVE_tszh ;
 int FLD_imm5 ;
 int decode_asimd_fcvt (TYPE_2__*) ;
 int decode_asisd_fcvtxn (TYPE_2__*) ;
 int decode_fcvt (TYPE_2__*) ;
 unsigned int extract_field (int ,int ,int ) ;
 unsigned int extract_fields (int ,int ,int,int ,int ) ;

__attribute__((used)) static int
do_misc_decoding (aarch64_inst *inst)
{
  unsigned int value;
  switch (inst->opcode->op)
    {
    case 144:
      return decode_fcvt (inst);

    case 141:
    case 140:
    case 143:
    case 142:
      return decode_asimd_fcvt (inst);

    case 139:
      return decode_asisd_fcvtxn (inst);

    case 134:
    case 137:
      value = extract_field (FLD_SVE_Pn, inst->value, 0);
      return (value == extract_field (FLD_SVE_Pm, inst->value, 0)
       && value == extract_field (FLD_SVE_Pg4_10, inst->value, 0));

    case 133:
      return (extract_field (FLD_SVE_Zd, inst->value, 0)
       == extract_field (FLD_SVE_Zm_16, inst->value, 0));

    case 132:

      value = extract_fields (inst->value, 0, 2, FLD_SVE_tszh, FLD_imm5);
      return value > 0 && value <= 16 && value == (value & -value);

    case 131:
      return (extract_field (FLD_SVE_Zn, inst->value, 0)
       == extract_field (FLD_SVE_Zm_16, inst->value, 0));

    case 130:

      value = extract_fields (inst->value, 0, 2, FLD_SVE_tszh, FLD_imm5);
      return value > 0 && value != (value & -value);

    case 138:
      return (extract_field (FLD_SVE_Pd, inst->value, 0)
       == extract_field (FLD_SVE_Pm, inst->value, 0));

    case 136:
    case 135:
      return (extract_field (FLD_SVE_Pn, inst->value, 0)
       == extract_field (FLD_SVE_Pm, inst->value, 0));

    case 129:
    case 128:
      return (extract_field (FLD_SVE_Pm, inst->value, 0)
       == extract_field (FLD_SVE_Pg4_10, inst->value, 0));

    default:
      return 0;
    }
}
