
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct Throttler {double max_rate; int index; int batch_size; double current_rate; size_t test_timestamp; size_t test_packet_count; TYPE_1__* buckets; } ;
struct TYPE_2__ {size_t timestamp; size_t packet_count; } ;


 size_t pixie_gettime () ;
 int pixie_usleep (size_t) ;

uint64_t
throttler_next_batch(struct Throttler *throttler, uint64_t packet_count)
{
    uint64_t timestamp;
    uint64_t index;
    uint64_t old_timestamp;
    uint64_t old_packet_count;
    double current_rate;
    double max_rate = throttler->max_rate;

again:



    timestamp = pixie_gettime();





    index = (throttler->index) & 0xFF;
    throttler->buckets[index].timestamp = timestamp;
    throttler->buckets[index].packet_count = packet_count;

    index = (++throttler->index) & 0xFF;
    old_timestamp = throttler->buckets[index].timestamp;
    old_packet_count = throttler->buckets[index].packet_count;





    if (timestamp - old_timestamp > 1000000) {

        throttler->batch_size = 1;
        goto again;
    }







    current_rate = 1.0*(packet_count - old_packet_count)/((timestamp - old_timestamp)/1000000.0);






    if (current_rate > max_rate) {
        double waittime;


        waittime = (current_rate - max_rate) / throttler->max_rate;




        waittime *= 0.1;





        if (waittime > 0.1)
            waittime = 0.1;







        throttler->batch_size *= 0.999;


        pixie_usleep((uint64_t)(waittime * 1000000.0));







        goto again;
    }
    throttler->batch_size *= 1.005;
    if (throttler->batch_size > 10000)
        throttler->batch_size = 10000;
    throttler->current_rate = current_rate;

    throttler->test_timestamp = timestamp;
    throttler->test_packet_count = packet_count;
    return (uint64_t)throttler->batch_size;
}
