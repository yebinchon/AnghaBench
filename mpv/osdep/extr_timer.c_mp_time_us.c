
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ MP_START_TIME ;
 scalar_t__ mp_raw_time_us () ;
 scalar_t__ raw_time_offset ;

int64_t mp_time_us(void)
{
    int64_t r = mp_raw_time_us() - raw_time_offset;
    if (r < MP_START_TIME)
        r = MP_START_TIME;
    return r;
}
