
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ sint16 ;



__attribute__((used)) static inline void i2c_master_wait_cpu_cycles(sint16 cycles_delay)
{
    uint32 cycles_start;
    uint32 cycles_curr;


    asm volatile("rsr %0, ccount":"=a"(cycles_start));
    do{
        asm volatile("rsr %0, ccount":"=a"(cycles_curr));
    } while (cycles_curr - cycles_start < cycles_delay);
}
