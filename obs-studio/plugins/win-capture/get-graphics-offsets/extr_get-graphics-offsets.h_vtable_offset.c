
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ HMODULE ;



__attribute__((used)) static inline uint32_t vtable_offset(HMODULE module, void *cls,
         unsigned int offset)
{
 uintptr_t *vtable = *(uintptr_t **)cls;
 return (uint32_t)(vtable[offset] - (uintptr_t)module);
}
