
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int ADDIU ;
 int FAIL_IF (int ) ;
 int IMM (int) ;
 int LUI ;
 int ORI ;
 int SA (int ) ;
 int SIMM_MIN ;
 int SLJIT_SUCCESS ;
 int TA (int ) ;
 int push_inst (struct sljit_compiler*,int,int ) ;

__attribute__((used)) static sljit_s32 load_immediate(struct sljit_compiler *compiler, sljit_s32 dst_ar, sljit_sw imm)
{
 if (!(imm & ~0xffff))
  return push_inst(compiler, ORI | SA(0) | TA(dst_ar) | IMM(imm), dst_ar);

 if (imm < 0 && imm >= SIMM_MIN)
  return push_inst(compiler, ADDIU | SA(0) | TA(dst_ar) | IMM(imm), dst_ar);

 FAIL_IF(push_inst(compiler, LUI | TA(dst_ar) | IMM(imm >> 16), dst_ar));
 return (imm & 0xffff) ? push_inst(compiler, ORI | SA(dst_ar) | TA(dst_ar) | IMM(imm), dst_ar) : SLJIT_SUCCESS;
}
