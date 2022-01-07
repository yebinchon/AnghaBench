
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ reset; } ;
typedef TYPE_1__ STATSD_METRIC ;



__attribute__((used)) static inline void statsd_reset_metric(STATSD_METRIC *m) {
    m->reset = 0;
    m->count = 0;
}
