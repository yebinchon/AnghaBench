
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tsc ;

__attribute__((used)) static void begin_tsc(void)
{
  unsigned long a, d;
  asm volatile ("cpuid\nrdtsc" : "=a" (a), "=d" (d) : "0" (0) : "ebx", "ecx");
  tsc = ((unsigned long)d << 32) | (unsigned long)a;
}
