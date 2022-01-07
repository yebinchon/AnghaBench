
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int system_get_cpu_freq () ;

__attribute__((used)) static uint32_t getCPUTicksPerSec() {
  return system_get_cpu_freq() * 1000000;
}
