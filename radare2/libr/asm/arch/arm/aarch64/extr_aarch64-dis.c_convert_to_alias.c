
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int op; } ;
typedef TYPE_1__ aarch64_opcode ;
typedef int aarch64_inst ;
 int convert_bfm_to_bfc (int *) ;
 int convert_bfm_to_bfi (int *) ;
 int convert_bfm_to_bfx (int *) ;
 int convert_bfm_to_sr (int *) ;
 int convert_csinc_to_cset (int *) ;
 int convert_extr_to_ror (int *) ;
 int convert_from_csel (int *) ;
 int convert_movebitmask_to_mov (int *) ;
 int convert_movewide_to_mov (int *) ;
 int convert_orr_to_mov (int *) ;
 int convert_shll_to_xtl (int *) ;
 int convert_ubfm_to_lsl (int *) ;

__attribute__((used)) static int
convert_to_alias (aarch64_inst *inst, const aarch64_opcode *alias)
{
  switch (alias->op)
    {
    case 151:
    case 141:
      return convert_bfm_to_sr (inst);
    case 142:
      return convert_ubfm_to_lsl (inst);
    case 147:
    case 146:
    case 145:
      return convert_from_csel (inst);
    case 144:
    case 143:
      return convert_csinc_to_cset (inst);
    case 130:
    case 148:
    case 134:
      return convert_bfm_to_bfx (inst);
    case 135:
    case 149:
    case 131:
      return convert_bfm_to_bfi (inst);
    case 150:
      return convert_bfm_to_bfc (inst);
    case 137:
      return convert_orr_to_mov (inst);
    case 139:
    case 138:
      return convert_movewide_to_mov (inst);
    case 140:
      return convert_movebitmask_to_mov (inst);
    case 136:
      return convert_extr_to_ror (inst);
    case 133:
    case 132:
    case 129:
    case 128:
      return convert_shll_to_xtl (inst);
    default:
      return 0;
    }
}
