
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int D (int ) ;
 int DR (int ) ;
 int FAIL_IF (int ) ;
 int IMM (int) ;
 int IMM_ARG ;
 int OR ;
 int S1 (int ) ;
 int SETHI ;
 int SIMM_MAX ;
 int SIMM_MIN ;
 int SLJIT_SUCCESS ;
 int push_inst (struct sljit_compiler*,int,int ) ;

__attribute__((used)) static sljit_s32 load_immediate(struct sljit_compiler *compiler, sljit_s32 dst, sljit_sw imm)
{
 if (imm <= SIMM_MAX && imm >= SIMM_MIN)
  return push_inst(compiler, OR | D(dst) | S1(0) | IMM(imm), DR(dst));

 FAIL_IF(push_inst(compiler, SETHI | D(dst) | ((imm >> 10) & 0x3fffff), DR(dst)));
 return (imm & 0x3ff) ? push_inst(compiler, OR | D(dst) | S1(dst) | IMM_ARG | (imm & 0x3ff), DR(dst)) : SLJIT_SUCCESS;
}
