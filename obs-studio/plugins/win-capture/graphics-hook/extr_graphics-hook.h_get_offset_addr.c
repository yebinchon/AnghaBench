
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ HMODULE ;



__attribute__((used)) static inline void *get_offset_addr(HMODULE module, uint32_t offset)
{
 return (void *)((uintptr_t)module + (uintptr_t)offset);
}
