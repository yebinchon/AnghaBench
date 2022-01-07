
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int skip_checks; } ;
typedef scalar_t__ sljit_sw ;
typedef int sljit_s32 ;


 int ADJUST_LOCAL_OFFSET (int ,scalar_t__) ;
 int CHECK (int ) ;
 int CHECK_ERROR () ;
 int SLJIT_ADD ;
 int SLJIT_IMM ;
 int SLJIT_MEM1 (int ) ;
 int SLJIT_MOV ;
 int SLJIT_SP ;
 int check_sljit_get_local_base (struct sljit_compiler*,int ,scalar_t__,scalar_t__) ;
 int sljit_emit_op1 (struct sljit_compiler*,int ,int ,scalar_t__,int ,int ) ;
 int sljit_emit_op2 (struct sljit_compiler*,int ,int ,scalar_t__,int ,int ,int ,scalar_t__) ;

sljit_s32 sljit_get_local_base(struct sljit_compiler *compiler, sljit_s32 dst, sljit_sw dstw, sljit_sw offset)
{
 CHECK_ERROR();
 CHECK(check_sljit_get_local_base(compiler, dst, dstw, offset));

 ADJUST_LOCAL_OFFSET(SLJIT_MEM1(SLJIT_SP), offset);




 if (offset != 0)
  return sljit_emit_op2(compiler, SLJIT_ADD, dst, dstw, SLJIT_SP, 0, SLJIT_IMM, offset);
 return sljit_emit_op1(compiler, SLJIT_MOV, dst, dstw, SLJIT_SP, 0);
}
