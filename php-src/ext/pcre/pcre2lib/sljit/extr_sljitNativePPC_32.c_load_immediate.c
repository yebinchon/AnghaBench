
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int A (int ) ;
 int ADDI ;
 int ADDIS ;
 int D (int ) ;
 int FAIL_IF (int ) ;
 int IMM (int) ;
 int ORI ;
 int S (int ) ;
 int SIMM_MAX ;
 int SIMM_MIN ;
 int SLJIT_SUCCESS ;
 int TMP_ZERO ;
 int push_inst (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 load_immediate(struct sljit_compiler *compiler, sljit_s32 reg, sljit_sw imm)
{
 if (imm <= SIMM_MAX && imm >= SIMM_MIN)
  return push_inst(compiler, ADDI | D(reg) | A(0) | IMM(imm));

 if (!(imm & ~0xffff))
  return push_inst(compiler, ORI | S(TMP_ZERO) | A(reg) | IMM(imm));

 FAIL_IF(push_inst(compiler, ADDIS | D(reg) | A(0) | IMM(imm >> 16)));
 return (imm & 0xffff) ? push_inst(compiler, ORI | S(reg) | A(reg) | IMM(imm)) : SLJIT_SUCCESS;
}
