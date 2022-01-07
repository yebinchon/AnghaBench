
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double mp_time_us () ;

double mp_time_sec(void)
{
    return mp_time_us() / (double)(1000 * 1000);
}
