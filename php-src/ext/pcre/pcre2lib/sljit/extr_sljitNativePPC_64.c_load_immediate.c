
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_uw ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int A (int ) ;
 int ADDI ;
 int ADDIS ;
 int ASM_SLJIT_CLZ (int,int) ;
 int D (int ) ;
 int FAIL_IF (int ) ;
 int IMM (int) ;
 int ORI ;
 int ORIS ;
 int PUSH_RLDICR (int ,int) ;
 int S (int ) ;
 int SIMM_MAX ;
 int SIMM_MIN ;
 int SLJIT_ASSERT (int) ;
 int SLJIT_SUCCESS ;
 int TMP_ZERO ;
 int push_inst (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 load_immediate(struct sljit_compiler *compiler, sljit_s32 reg, sljit_sw imm)
{
 sljit_uw tmp;
 sljit_uw shift;
 sljit_uw tmp2;
 sljit_uw shift2;

 if (imm <= SIMM_MAX && imm >= SIMM_MIN)
  return push_inst(compiler, ADDI | D(reg) | A(0) | IMM(imm));

 if (!(imm & ~0xffff))
  return push_inst(compiler, ORI | S(TMP_ZERO) | A(reg) | IMM(imm));

 if (imm <= 0x7fffffffl && imm >= -0x80000000l) {
  FAIL_IF(push_inst(compiler, ADDIS | D(reg) | A(0) | IMM(imm >> 16)));
  return (imm & 0xffff) ? push_inst(compiler, ORI | S(reg) | A(reg) | IMM(imm)) : SLJIT_SUCCESS;
 }


 tmp = (imm >= 0) ? imm : ~imm;
 ASM_SLJIT_CLZ(tmp, shift);
 SLJIT_ASSERT(shift > 0);
 shift--;
 tmp = (imm << shift);

 if ((tmp & ~0xffff000000000000ul) == 0) {
  FAIL_IF(push_inst(compiler, ADDI | D(reg) | A(0) | IMM(tmp >> 48)));
  shift += 15;
  return PUSH_RLDICR(reg, shift);
 }

 if ((tmp & ~0xffffffff00000000ul) == 0) {
  FAIL_IF(push_inst(compiler, ADDIS | D(reg) | A(0) | IMM(tmp >> 48)));
  FAIL_IF(push_inst(compiler, ORI | S(reg) | A(reg) | IMM(tmp >> 32)));
  shift += 31;
  return PUSH_RLDICR(reg, shift);
 }


 shift += 15;
 tmp2 = imm & ((1ul << (63 - shift)) - 1);

 if (tmp2 <= 0xffff) {
  FAIL_IF(push_inst(compiler, ADDI | D(reg) | A(0) | IMM(tmp >> 48)));
  FAIL_IF(PUSH_RLDICR(reg, shift));
  return push_inst(compiler, ORI | S(reg) | A(reg) | tmp2);
 }

 if (tmp2 <= 0xffffffff) {
  FAIL_IF(push_inst(compiler, ADDI | D(reg) | A(0) | IMM(tmp >> 48)));
  FAIL_IF(PUSH_RLDICR(reg, shift));
  FAIL_IF(push_inst(compiler, ORIS | S(reg) | A(reg) | (tmp2 >> 16)));
  return (imm & 0xffff) ? push_inst(compiler, ORI | S(reg) | A(reg) | IMM(tmp2)) : SLJIT_SUCCESS;
 }

 ASM_SLJIT_CLZ(tmp2, shift2);
 tmp2 <<= shift2;

 if ((tmp2 & ~0xffff000000000000ul) == 0) {
  FAIL_IF(push_inst(compiler, ADDI | D(reg) | A(0) | IMM(tmp >> 48)));
  shift2 += 15;
  shift += (63 - shift2);
  FAIL_IF(PUSH_RLDICR(reg, shift));
  FAIL_IF(push_inst(compiler, ORI | S(reg) | A(reg) | (tmp2 >> 48)));
  return PUSH_RLDICR(reg, shift2);
 }


 FAIL_IF(push_inst(compiler, ADDIS | D(reg) | A(0) | IMM(imm >> 48)));
 FAIL_IF(push_inst(compiler, ORI | S(reg) | A(reg) | IMM(imm >> 32)));
 FAIL_IF(PUSH_RLDICR(reg, 31));
 FAIL_IF(push_inst(compiler, ORIS | S(reg) | A(reg) | IMM(imm >> 16)));
 return push_inst(compiler, ORI | S(reg) | A(reg) | IMM(imm));
}
