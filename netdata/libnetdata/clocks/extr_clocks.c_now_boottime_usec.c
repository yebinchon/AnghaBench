
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int clock_boottime_valid ;
 scalar_t__ likely (int ) ;
 int now_usec (int ) ;

inline usec_t now_boottime_usec(void) {
    return now_usec(likely(clock_boottime_valid) ? CLOCK_BOOTTIME : CLOCK_MONOTONIC);
}
