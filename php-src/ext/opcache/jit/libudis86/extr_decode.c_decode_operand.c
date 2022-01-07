
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int udword; int sbyte; } ;
struct ud_operand {int type; int _oprcode; int size; scalar_t__ base; TYPE_1__ lval; } ;
struct ud {int br_far; int dis_mode; int _rex; } ;
typedef enum ud_operand_code { ____Placeholder_ud_operand_code } ud_operand_code ;


 int MODRM_MOD (int ) ;
 unsigned int Mx_mem_size (unsigned int) ;
 unsigned int Mx_reg_size (unsigned int) ;
 int REGCLASS_CR ;
 int REGCLASS_DB ;
 int REGCLASS_GPR ;
 int REGCLASS_MMX ;
 int REGCLASS_SEG ;
 int REGCLASS_XMM ;
 int REX_B (int ) ;
 int UDERR (struct ud*,char*) ;
 void* UD_NONE ;
 void* UD_OP_CONST ;
 int UD_OP_JIMM ;
 void* UD_OP_REG ;
 scalar_t__ UD_R_ES ;
 scalar_t__ UD_R_ST0 ;
 int decode_a (struct ud*,struct ud_operand*) ;
 int decode_imm (struct ud*,unsigned int,struct ud_operand*) ;
 int decode_modrm_reg (struct ud*,struct ud_operand*,int ,unsigned int) ;
 int decode_modrm_rm (struct ud*,struct ud_operand*,int ,unsigned int) ;
 int decode_moffset (struct ud*,unsigned int,struct ud_operand*) ;
 int decode_reg (struct ud*,struct ud_operand*,int ,int,unsigned int) ;
 int decode_vex_immreg (struct ud*,struct ud_operand*,unsigned int) ;
 int decode_vex_vvvv (struct ud*,struct ud_operand*,unsigned int) ;
 int modrm (struct ud*) ;

__attribute__((used)) static int
decode_operand(struct ud *u,
               struct ud_operand *operand,
               enum ud_operand_code type,
               unsigned int size)
{
  operand->type = UD_NONE;
  operand->_oprcode = type;

  switch (type) {
    case 184 :
      decode_a(u, operand);
      break;
    case 160:
      decode_modrm_rm(u, operand, REGCLASS_GPR,
                      MODRM_MOD(modrm(u)) == 3 ?
                        Mx_reg_size(size) : Mx_mem_size(size));
      break;
    case 171:
      u->br_far = 1;

    case 161:
      if (MODRM_MOD(modrm(u)) == 3) {
        UDERR(u, "expected modrm.mod != 3\n");
      }

    case 173:
      decode_modrm_rm(u, operand, REGCLASS_GPR, size);
      break;
    case 169:
      decode_modrm_reg(u, operand, REGCLASS_GPR, size);
      break;
    case 128:
    case 166:
      decode_imm(u, size, operand);
      break;
    case 165:
      operand->type = UD_OP_CONST;
      operand->lval.udword = 1;
      break;
    case 158:
      if (MODRM_MOD(modrm(u)) != 3) {
        UDERR(u, "expected modrm.mod == 3\n");
      }

    case 155:
      decode_modrm_rm(u, operand, REGCLASS_MMX, size);
      break;
    case 156:
      decode_modrm_reg(u, operand, REGCLASS_MMX, size);
      break;
    case 135:
      if (MODRM_MOD(modrm(u)) != 3) {
        UDERR(u, "expected modrm.mod == 3\n");
      }

    case 133:
      decode_modrm_rm(u, operand, REGCLASS_XMM, size);
      break;
    case 134:
      decode_modrm_reg(u, operand, REGCLASS_XMM, size);
      break;
    case 167:
      decode_vex_vvvv(u, operand, size);
      break;
    case 159:
      decode_modrm_rm(u, operand, REGCLASS_XMM,
                      MODRM_MOD(modrm(u)) == 3 ?
                        Mx_reg_size(size) : Mx_mem_size(size));
      break;
    case 145:
      decode_modrm_reg(u, operand, REGCLASS_SEG, size);
      break;
    case 157:
      decode_moffset(u, size, operand);
      break;
    case 153:
    case 152:
    case 151:
    case 150:
    case 149:
    case 148:
    case 147:
    case 146:
      decode_reg(u, operand, REGCLASS_GPR,
                 (REX_B(u->_rex) << 3) | (type - 153), size);
      break;
    case 183:
    case 182:
    case 132:
    case 129:
      decode_reg(u, operand, REGCLASS_GPR, 0, size);
      break;
    case 180:
    case 178:
    case 131:
      decode_reg(u, operand, REGCLASS_GPR, 1, size);
      break;
    case 176:
    case 174:
    case 130:
      decode_reg(u, operand, REGCLASS_GPR, 2, size);
      break;
    case 172:
    case 179:
    case 175:
    case 144:
    case 170:
    case 168:

      if (u->dis_mode == 64) {
        if (type != 170 && type != 168) {
          UDERR(u, "invalid segment register in 64bits\n");
        }
      }
      operand->type = UD_OP_REG;
      operand->base = (type - 172) + UD_R_ES;
      operand->size = 16;
      break;
    case 163 :
      decode_imm(u, size, operand);
      operand->type = UD_OP_JIMM;
      break ;
    case 154 :
      if (MODRM_MOD(modrm(u)) != 3) {
        UDERR(u, "expected modrm.mod == 3\n");
      }
      decode_modrm_rm(u, operand, REGCLASS_GPR, size);
      break;
    case 181:
      decode_modrm_reg(u, operand, REGCLASS_CR, size);
      break;
    case 177:
      decode_modrm_reg(u, operand, REGCLASS_DB, size);
      break;
    case 164 :
      operand->type = UD_OP_CONST;
      operand->lval.sbyte = 3;
      break;
    case 143:
    case 142:
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
      operand->type = UD_OP_REG;
      operand->base = (type - 143) + UD_R_ST0;
      operand->size = 80;
      break;
    case 162:
      decode_vex_immreg(u, operand, size);
      break;
    default :
      operand->type = UD_NONE;
      break;
  }
  return operand->type;
}
