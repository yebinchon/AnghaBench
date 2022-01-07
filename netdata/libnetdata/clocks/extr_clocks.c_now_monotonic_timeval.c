
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int CLOCK_MONOTONIC ;
 int now_timeval (int ,struct timeval*) ;

inline int now_monotonic_timeval(struct timeval *tv) {
    return now_timeval(CLOCK_MONOTONIC, tv);
}
