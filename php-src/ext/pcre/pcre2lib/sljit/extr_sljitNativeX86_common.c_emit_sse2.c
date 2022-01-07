
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_u8 ;
typedef int sljit_sw ;
typedef scalar_t__ sljit_s32 ;


 int EX86_PREF_F2 ;
 int EX86_PREF_F3 ;
 int EX86_SSE2 ;
 int FAIL_IF (int) ;
 int GROUP_0F ;
 scalar_t__ SLJIT_SUCCESS ;
 int * emit_x86_instruction (struct sljit_compiler*,int,scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static sljit_s32 emit_sse2(struct sljit_compiler *compiler, sljit_u8 opcode,
 sljit_s32 single, sljit_s32 xmm1, sljit_s32 xmm2, sljit_sw xmm2w)
{
 sljit_u8 *inst;

 inst = emit_x86_instruction(compiler, 2 | (single ? EX86_PREF_F3 : EX86_PREF_F2) | EX86_SSE2, xmm1, 0, xmm2, xmm2w);
 FAIL_IF(!inst);
 *inst++ = GROUP_0F;
 *inst = opcode;
 return SLJIT_SUCCESS;
}
