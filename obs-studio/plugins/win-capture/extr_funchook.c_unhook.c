
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_hook {int hooked; scalar_t__ type; uintptr_t func_addr; void* rehook_data; void* unhook_data; } ;


 scalar_t__ HOOKTYPE_FORWARD_OVERWRITE ;
 scalar_t__ HOOKTYPE_REVERSE_CHAIN ;
 size_t JMP_32_SIZE ;
 int fix_permissions (void*,size_t) ;
 int memcpy (void*,void*,size_t) ;
 size_t patch_size (struct func_hook*) ;

void unhook(struct func_hook *hook)
{
 uintptr_t addr;
 size_t size;

 if (!hook->hooked)
  return;

 if (hook->type == HOOKTYPE_REVERSE_CHAIN) {
  size = JMP_32_SIZE;
  addr = (hook->func_addr - JMP_32_SIZE);
 } else {
  size = patch_size(hook);
  addr = hook->func_addr;
 }

 fix_permissions((void *)addr, size);
 memcpy(hook->rehook_data, (void *)addr, size);

 if (hook->type == HOOKTYPE_FORWARD_OVERWRITE)
  memcpy((void *)hook->func_addr, hook->unhook_data, size);

 hook->hooked = 0;
}
