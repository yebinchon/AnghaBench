
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int clock_boottime_valid ;
 scalar_t__ likely (int ) ;
 int now_timeval (int ,struct timeval*) ;

inline int now_boottime_timeval(struct timeval *tv) {
    return now_timeval(likely(clock_boottime_valid) ? CLOCK_BOOTTIME : CLOCK_MONOTONIC, tv);
}
