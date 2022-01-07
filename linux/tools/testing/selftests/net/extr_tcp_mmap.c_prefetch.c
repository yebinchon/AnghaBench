
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void prefetch(const void *x)
{

 asm volatile("prefetcht0 %P0" : : "m" (*(const char *)x));

}
