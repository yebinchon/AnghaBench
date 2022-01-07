
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int getCpuTimerTicksDivisor () ;

__attribute__((used)) static uint32_t cpuToTimerTicks(uint32_t cpuTicks) {
  return cpuTicks / getCpuTimerTicksDivisor();
}
