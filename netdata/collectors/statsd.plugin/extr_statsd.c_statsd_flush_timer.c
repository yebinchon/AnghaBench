
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STATSD_METRIC ;


 int statsd_flush_timer_or_histogram (int *,char*,char*,char*) ;

__attribute__((used)) static inline void statsd_flush_timer(STATSD_METRIC *m) {
    statsd_flush_timer_or_histogram(m, "timer", "timers", "milliseconds");
}
