
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint64_t ;


 int const getCPUTicksPerSec () ;

__attribute__((used)) static uint64_t enduserFreqToCPUTicks(const uint64_t divisableFreq, const uint64_t freqDivisor, const uint64_t resolution) {
  return (getCPUTicksPerSec() / (freqDivisor * resolution)) * divisableFreq;
}
