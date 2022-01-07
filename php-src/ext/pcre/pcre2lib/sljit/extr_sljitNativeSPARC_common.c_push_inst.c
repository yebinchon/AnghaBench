
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int delay_slot; int size; } ;
typedef int sljit_s32 ;
typedef int sljit_ins ;


 int DST_INS_MASK ;
 int FAIL_IF (int) ;
 int MOVABLE_INS ;
 int SLJIT_ASSERT (int) ;
 int SLJIT_SUCCESS ;
 int UNMOVABLE_INS ;
 scalar_t__ ensure_buf (struct sljit_compiler*,int) ;

__attribute__((used)) static sljit_s32 push_inst(struct sljit_compiler *compiler, sljit_ins ins, sljit_s32 delay_slot)
{
 sljit_ins *ptr;
 SLJIT_ASSERT((delay_slot & DST_INS_MASK) == UNMOVABLE_INS
  || (delay_slot & DST_INS_MASK) == MOVABLE_INS
  || (delay_slot & DST_INS_MASK) == ((ins >> 25) & 0x1f));
 ptr = (sljit_ins*)ensure_buf(compiler, sizeof(sljit_ins));
 FAIL_IF(!ptr);
 *ptr = ins;
 compiler->size++;
 compiler->delay_slot = delay_slot;
 return SLJIT_SUCCESS;
}
