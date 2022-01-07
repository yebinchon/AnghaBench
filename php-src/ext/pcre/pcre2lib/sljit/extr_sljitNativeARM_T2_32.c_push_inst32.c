
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int size; } ;
typedef int sljit_u16 ;
typedef int sljit_s32 ;
typedef int sljit_ins ;


 int FAIL_IF (int) ;
 int SLJIT_SUCCESS ;
 scalar_t__ ensure_buf (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 push_inst32(struct sljit_compiler *compiler, sljit_ins inst)
{
 sljit_u16 *ptr = (sljit_u16*)ensure_buf(compiler, sizeof(sljit_ins));
 FAIL_IF(!ptr);
 *ptr++ = inst >> 16;
 *ptr = inst;
 compiler->size += 2;
 return SLJIT_SUCCESS;
}
