
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int QuadPart; } ;
struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 TYPE_2__ perf_freq ;

uint64_t mp_raw_time_us(void)
{
    LARGE_INTEGER perf_count;
    QueryPerformanceCounter(&perf_count);




    return perf_count.QuadPart / perf_freq.QuadPart * 1000000 +
        perf_count.QuadPart % perf_freq.QuadPart * 1000000 / perf_freq.QuadPart;
}
