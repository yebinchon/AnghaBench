
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_hook {uintptr_t func_addr; uintptr_t hook_addr; char const* name; int unhook_data; } ;


 uintptr_t JMP_32_SIZE ;
 scalar_t__ JMP_64_SIZE ;
 int fix_permissions (void*,scalar_t__) ;
 int memcpy (int ,void*,scalar_t__) ;
 int memset (struct func_hook*,int ,int) ;

void hook_init(struct func_hook *hook, void *func_addr, void *hook_addr,
        const char *name)
{
 memset(hook, 0, sizeof(*hook));

 hook->func_addr = (uintptr_t)func_addr;
 hook->hook_addr = (uintptr_t)hook_addr;
 hook->name = name;

 fix_permissions((void *)(hook->func_addr - JMP_32_SIZE),
   JMP_64_SIZE + JMP_32_SIZE);

 memcpy(hook->unhook_data, func_addr, JMP_64_SIZE);
}
