
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct func_hook {int hooked; int type; scalar_t__ func_addr; void* call_addr; } ;
typedef scalar_t__ int32_t ;


 int HOOKTYPE_FORWARD_OVERWRITE ;

__attribute__((used)) static inline void hook_forward_overwrite(struct func_hook *hook,
       intptr_t offset)
{
 uint8_t *ptr = (uint8_t *)hook->func_addr;

 hook->call_addr = (void *)hook->func_addr;
 hook->type = HOOKTYPE_FORWARD_OVERWRITE;
 hook->hooked = 1;

 *(ptr++) = 0xE9;
 *((int32_t *)ptr) = (int32_t)offset;
}
