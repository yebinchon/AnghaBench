
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void wrgsbase(unsigned long gsbase)
{
 asm volatile("wrgsbase %0" :: "r" (gsbase) : "memory");
}
