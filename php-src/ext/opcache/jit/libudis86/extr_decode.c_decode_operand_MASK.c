#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int udword; int sbyte; } ;
struct ud_operand {int type; int _oprcode; int size; scalar_t__ base; TYPE_1__ lval; } ;
struct ud {int br_far; int dis_mode; int /*<<< orphan*/  _rex; } ;
typedef  enum ud_operand_code { ____Placeholder_ud_operand_code } ud_operand_code ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
#define  OP_A 184 
#define  OP_AL 183 
#define  OP_AX 182 
#define  OP_C 181 
#define  OP_CL 180 
#define  OP_CS 179 
#define  OP_CX 178 
#define  OP_D 177 
#define  OP_DL 176 
#define  OP_DS 175 
#define  OP_DX 174 
#define  OP_E 173 
#define  OP_ES 172 
#define  OP_F 171 
#define  OP_FS 170 
#define  OP_G 169 
#define  OP_GS 168 
#define  OP_H 167 
#define  OP_I 166 
#define  OP_I1 165 
#define  OP_I3 164 
#define  OP_J 163 
#define  OP_L 162 
#define  OP_M 161 
#define  OP_MR 160 
#define  OP_MU 159 
#define  OP_N 158 
#define  OP_O 157 
#define  OP_P 156 
#define  OP_Q 155 
#define  OP_R 154 
#define  OP_R0 153 
#define  OP_R1 152 
#define  OP_R2 151 
#define  OP_R3 150 
#define  OP_R4 149 
#define  OP_R5 148 
#define  OP_R6 147 
#define  OP_R7 146 
#define  OP_S 145 
#define  OP_SS 144 
#define  OP_ST0 143 
#define  OP_ST1 142 
#define  OP_ST2 141 
#define  OP_ST3 140 
#define  OP_ST4 139 
#define  OP_ST5 138 
#define  OP_ST6 137 
#define  OP_ST7 136 
#define  OP_U 135 
#define  OP_V 134 
#define  OP_W 133 
#define  OP_eAX 132 
#define  OP_eCX 131 
#define  OP_eDX 130 
#define  OP_rAX 129 
#define  OP_sI 128 
 int /*<<< orphan*/  REGCLASS_CR ; 
 int /*<<< orphan*/  REGCLASS_DB ; 
 int /*<<< orphan*/  REGCLASS_GPR ; 
 int /*<<< orphan*/  REGCLASS_MMX ; 
 int /*<<< orphan*/  REGCLASS_SEG ; 
 int /*<<< orphan*/  REGCLASS_XMM ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ud*,char*) ; 
 void* UD_NONE ; 
 void* UD_OP_CONST ; 
 int UD_OP_JIMM ; 
 void* UD_OP_REG ; 
 scalar_t__ UD_R_ES ; 
 scalar_t__ UD_R_ST0 ; 
 int /*<<< orphan*/  FUNC5 (struct ud*,struct ud_operand*) ; 
 int /*<<< orphan*/  FUNC6 (struct ud*,unsigned int,struct ud_operand*) ; 
 int /*<<< orphan*/  FUNC7 (struct ud*,struct ud_operand*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ud*,struct ud_operand*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ud*,unsigned int,struct ud_operand*) ; 
 int /*<<< orphan*/  FUNC10 (struct ud*,struct ud_operand*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct ud*,struct ud_operand*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct ud*,struct ud_operand*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct ud*) ; 

__attribute__((used)) static int
FUNC14(struct ud           *u, 
               struct ud_operand   *operand,
               enum ud_operand_code type,
               unsigned int         size)
{
  operand->type = UD_NONE;
  operand->_oprcode = type;

  switch (type) {
    case OP_A :
      FUNC5(u, operand);
      break;
    case OP_MR:
      FUNC8(u, operand, REGCLASS_GPR, 
                      FUNC0(FUNC13(u)) == 3 ? 
                        FUNC2(size) : FUNC1(size));
      break;
    case OP_F:
      u->br_far  = 1;
      /* intended fall through */
    case OP_M:
      if (FUNC0(FUNC13(u)) == 3) {
        FUNC4(u, "expected modrm.mod != 3\n");
      }
      /* intended fall through */
    case OP_E:
      FUNC8(u, operand, REGCLASS_GPR, size);
      break;
    case OP_G:
      FUNC7(u, operand, REGCLASS_GPR, size);
      break;
    case OP_sI:
    case OP_I:
      FUNC6(u, size, operand);
      break;
    case OP_I1:
      operand->type = UD_OP_CONST;
      operand->lval.udword = 1;
      break;
    case OP_N:
      if (FUNC0(FUNC13(u)) != 3) {
        FUNC4(u, "expected modrm.mod == 3\n");
      }
      /* intended fall through */
    case OP_Q:
      FUNC8(u, operand, REGCLASS_MMX, size);
      break;
    case OP_P:
      FUNC7(u, operand, REGCLASS_MMX, size);
      break;
    case OP_U:
      if (FUNC0(FUNC13(u)) != 3) {
        FUNC4(u, "expected modrm.mod == 3\n");
      }
      /* intended fall through */
    case OP_W:
      FUNC8(u, operand, REGCLASS_XMM, size);
      break;
    case OP_V:
      FUNC7(u, operand, REGCLASS_XMM, size);
      break;
    case OP_H:
      FUNC12(u, operand, size);
      break;
    case OP_MU:
      FUNC8(u, operand, REGCLASS_XMM, 
                      FUNC0(FUNC13(u)) == 3 ? 
                        FUNC2(size) : FUNC1(size));
      break;
    case OP_S:
      FUNC7(u, operand, REGCLASS_SEG, size);
      break;
    case OP_O:
      FUNC9(u, size, operand);
      break;
    case OP_R0: 
    case OP_R1: 
    case OP_R2: 
    case OP_R3: 
    case OP_R4: 
    case OP_R5: 
    case OP_R6: 
    case OP_R7:
      FUNC10(u, operand, REGCLASS_GPR, 
                 (FUNC3(u->_rex) << 3) | (type - OP_R0), size);
      break;
    case OP_AL:
    case OP_AX:
    case OP_eAX:
    case OP_rAX:
      FUNC10(u, operand, REGCLASS_GPR, 0, size);
      break;
    case OP_CL:
    case OP_CX:
    case OP_eCX:
      FUNC10(u, operand, REGCLASS_GPR, 1, size);
      break;
    case OP_DL:
    case OP_DX:
    case OP_eDX:
      FUNC10(u, operand, REGCLASS_GPR, 2, size);
      break;
    case OP_ES: 
    case OP_CS: 
    case OP_DS:
    case OP_SS: 
    case OP_FS: 
    case OP_GS:
      /* in 64bits mode, only fs and gs are allowed */
      if (u->dis_mode == 64) {
        if (type != OP_FS && type != OP_GS) {
          FUNC4(u, "invalid segment register in 64bits\n");
        }
      }
      operand->type = UD_OP_REG;
      operand->base = (type - OP_ES) + UD_R_ES;
      operand->size = 16;
      break;
    case OP_J :
      FUNC6(u, size, operand);
      operand->type = UD_OP_JIMM;
      break ;
    case OP_R :
      if (FUNC0(FUNC13(u)) != 3) {
        FUNC4(u, "expected modrm.mod == 3\n");
      }
      FUNC8(u, operand, REGCLASS_GPR, size);
      break;
    case OP_C:
      FUNC7(u, operand, REGCLASS_CR, size);
      break;
    case OP_D:
      FUNC7(u, operand, REGCLASS_DB, size);
      break;
    case OP_I3 :
      operand->type = UD_OP_CONST;
      operand->lval.sbyte = 3;
      break;
    case OP_ST0: 
    case OP_ST1: 
    case OP_ST2: 
    case OP_ST3:
    case OP_ST4:
    case OP_ST5: 
    case OP_ST6: 
    case OP_ST7:
      operand->type = UD_OP_REG;
      operand->base = (type - OP_ST0) + UD_R_ST0;
      operand->size = 80;
      break;
    case OP_L:
      FUNC11(u, operand, size);
      break;
    default :
      operand->type = UD_NONE;
      break;
  }
  return operand->type;
}