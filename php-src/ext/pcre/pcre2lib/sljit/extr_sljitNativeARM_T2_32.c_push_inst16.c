
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int size; } ;
typedef int sljit_u16 ;
typedef int sljit_s32 ;
typedef int sljit_ins ;


 int FAIL_IF (int) ;
 int SLJIT_ASSERT (int) ;
 int SLJIT_SUCCESS ;
 scalar_t__ ensure_buf (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 push_inst16(struct sljit_compiler *compiler, sljit_ins inst)
{
 sljit_u16 *ptr;
 SLJIT_ASSERT(!(inst & 0xffff0000));

 ptr = (sljit_u16*)ensure_buf(compiler, sizeof(sljit_u16));
 FAIL_IF(!ptr);
 *ptr = inst;
 compiler->size++;
 return SLJIT_SUCCESS;
}
