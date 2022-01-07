
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PWM2_TMR_MAGIC_160MHZ ;
 int PWM2_TMR_MAGIC_80MHZ ;
 int system_get_cpu_freq () ;

__attribute__((used)) static uint8_t getCpuTimerTicksDivisor() {
  return system_get_cpu_freq() == 80 ? PWM2_TMR_MAGIC_80MHZ : PWM2_TMR_MAGIC_160MHZ;
}
