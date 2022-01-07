
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long __rdtsc () ;

__attribute__((used)) static inline void wait_cycles(unsigned long long cycles)
{
 unsigned long long t;

 t = __rdtsc();
 while (__rdtsc() - t < cycles) {}
}
