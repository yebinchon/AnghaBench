
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int clock_boottime_valid ;
 scalar_t__ likely (int ) ;
 int now_sec (int ) ;

inline time_t now_boottime_sec(void) {
    return now_sec(likely(clock_boottime_valid) ? CLOCK_BOOTTIME : CLOCK_MONOTONIC);
}
