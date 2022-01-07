
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Throttler {double max_rate; int batch_size; TYPE_1__* buckets; } ;
struct TYPE_2__ {scalar_t__ packet_count; int timestamp; } ;


 int LOG (int,char*,double) ;
 int memset (struct Throttler*,int ,int) ;
 int pixie_gettime () ;

void
throttler_start(struct Throttler *throttler, double max_rate)
{
    unsigned i;

    memset(throttler, 0, sizeof(*throttler));

    throttler->max_rate = max_rate;

    for (i=0; i<sizeof(throttler->buckets)/sizeof(throttler->buckets[0]); i++) {
        throttler->buckets[i].timestamp = pixie_gettime();
        throttler->buckets[i].packet_count = 0;
    }

    throttler->batch_size = 1;

    LOG(1, "maxrate = %0.2f\n", throttler->max_rate);
}
