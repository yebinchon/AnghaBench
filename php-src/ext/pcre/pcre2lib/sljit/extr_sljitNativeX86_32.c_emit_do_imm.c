
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int dummy; } ;
typedef int sljit_u8 ;
typedef int sljit_sw ;
typedef int sljit_s32 ;


 int FAIL_IF (int) ;
 int INC_SIZE (int) ;
 int SLJIT_SUCCESS ;
 scalar_t__ ensure_buf (struct sljit_compiler*,int) ;
 int sljit_unaligned_store_sw (int *,int ) ;

__attribute__((used)) static sljit_s32 emit_do_imm(struct sljit_compiler *compiler, sljit_u8 opcode, sljit_sw imm)
{
 sljit_u8 *inst;

 inst = (sljit_u8*)ensure_buf(compiler, 1 + 1 + sizeof(sljit_sw));
 FAIL_IF(!inst);
 INC_SIZE(1 + sizeof(sljit_sw));
 *inst++ = opcode;
 sljit_unaligned_store_sw(inst, imm);
 return SLJIT_SUCCESS;
}
