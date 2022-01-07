
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int size; } ;
typedef int sljit_uw ;
typedef int sljit_s32 ;


 int FAIL_IF (int) ;
 int SLJIT_SUCCESS ;
 scalar_t__ ensure_buf (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 push_inst(struct sljit_compiler *compiler, sljit_uw inst)
{
 sljit_uw* ptr;

 ptr = (sljit_uw*)ensure_buf(compiler, sizeof(sljit_uw));
 FAIL_IF(!ptr);
 compiler->size++;
 *ptr = inst;
 return SLJIT_SUCCESS;
}
