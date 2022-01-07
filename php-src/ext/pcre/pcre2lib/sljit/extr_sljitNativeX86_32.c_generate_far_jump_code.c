
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target; } ;
struct sljit_jump {int flags; scalar_t__ addr; TYPE_1__ u; } ;
typedef scalar_t__ sljit_uw ;
typedef int sljit_u8 ;
typedef scalar_t__ sljit_sw ;
typedef scalar_t__ sljit_s32 ;


 int CALL_i32 ;
 int GROUP_0F ;
 int JMP_i32 ;
 int JUMP_LABEL ;
 int PATCH_MW ;
 scalar_t__ SLJIT_FAST_CALL ;
 scalar_t__ SLJIT_JUMP ;
 int get_jump_code (scalar_t__) ;
 int sljit_unaligned_store_sw (int *,scalar_t__) ;

__attribute__((used)) static sljit_u8* generate_far_jump_code(struct sljit_jump *jump, sljit_u8 *code_ptr, sljit_s32 type, sljit_sw executable_offset)
{
 if (type == SLJIT_JUMP) {
  *code_ptr++ = JMP_i32;
  jump->addr++;
 }
 else if (type >= SLJIT_FAST_CALL) {
  *code_ptr++ = CALL_i32;
  jump->addr++;
 }
 else {
  *code_ptr++ = GROUP_0F;
  *code_ptr++ = get_jump_code(type);
  jump->addr += 2;
 }

 if (jump->flags & JUMP_LABEL)
  jump->flags |= PATCH_MW;
 else
  sljit_unaligned_store_sw(code_ptr, jump->u.target - (jump->addr + 4) - (sljit_uw)executable_offset);
 code_ptr += 4;

 return code_ptr;
}
