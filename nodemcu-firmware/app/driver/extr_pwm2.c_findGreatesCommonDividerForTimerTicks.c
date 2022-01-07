
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ findGCD (scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t findGreatesCommonDividerForTimerTicks(uint32_t newTimerTicks, uint32_t oldTimerTicks) {
  return oldTimerTicks == 0 ? newTimerTicks : findGCD(newTimerTicks, oldTimerTicks);
}
