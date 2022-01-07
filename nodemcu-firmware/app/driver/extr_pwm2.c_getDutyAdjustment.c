
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;



__attribute__((used)) static uint8_t getDutyAdjustment(const uint32_t duty, const uint32_t pulse) {
  if (duty == 0) {
    return 0;
  } else if (duty == pulse) {
    return 2;
  } else {
    return 1;
  }
}
