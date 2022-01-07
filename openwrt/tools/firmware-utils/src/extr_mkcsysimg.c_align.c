
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t align(uint32_t base, uint32_t alignment)
{
 uint32_t ret;

 if (alignment) {
  ret = (base + alignment - 1);
  ret &= ~(alignment-1);
 } else {
  ret = base;
 }

 return ret;
}
