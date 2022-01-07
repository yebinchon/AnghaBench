
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct func_hook {int started; scalar_t__ type; scalar_t__ func_addr; } ;


 scalar_t__ HOOKTYPE_FORWARD_OVERWRITE ;
 int JMP_32_SIZE ;
 scalar_t__ X86_JMP_NEG_5 ;
 scalar_t__ X86_NOP ;
 int fix_permissions (void*,int) ;
 int hook_forward_chain (struct func_hook*,scalar_t__*,intptr_t) ;
 int hook_forward_overwrite (struct func_hook*,intptr_t) ;
 int hook_reverse_chain (struct func_hook*,scalar_t__*) ;
 int hook_reverse_new (struct func_hook*,scalar_t__*) ;

__attribute__((used)) static inline void rehook32(struct func_hook *hook, bool force, intptr_t offset)
{
 fix_permissions((void *)(hook->func_addr - JMP_32_SIZE),
   JMP_32_SIZE * 2);

 if (force || !hook->started) {
  uint8_t *p = (uint8_t *)hook->func_addr - JMP_32_SIZE;
  size_t nop_count = 0;


  for (size_t i = 0; i < JMP_32_SIZE; i++) {
   if (p[i] == X86_NOP)
    nop_count++;
  }

  if (nop_count == JMP_32_SIZE && p[5] == 0x8B && p[6] == 0xFF) {
   hook_reverse_new(hook, p);

  } else if (p[0] == 0xE9 &&
      *(uint16_t *)&p[5] == X86_JMP_NEG_5) {
   hook_reverse_chain(hook, p);

  } else if (p[5] == 0xE9) {
   hook_forward_chain(hook, p, offset);

  } else if (hook->type != HOOKTYPE_FORWARD_OVERWRITE) {
   hook->type = HOOKTYPE_FORWARD_OVERWRITE;
  }

  hook->started = 1;
 }

 if (hook->type == HOOKTYPE_FORWARD_OVERWRITE) {
  hook_forward_overwrite(hook, offset);
 }
}
