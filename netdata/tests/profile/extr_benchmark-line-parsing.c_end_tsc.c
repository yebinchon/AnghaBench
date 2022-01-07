
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tsc ;

__attribute__((used)) static unsigned long end_tsc(void)
{
  unsigned long a, d;
  asm volatile ("rdtscp" : "=a" (a), "=d" (d) : : "ecx");
  return (((unsigned long)d << 32) | (unsigned long)a) - tsc;
}
