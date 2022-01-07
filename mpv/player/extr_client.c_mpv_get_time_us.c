
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;
typedef int int64_t ;


 int mp_time_us () ;

int64_t mpv_get_time_us(mpv_handle *ctx)
{
    return mp_time_us();
}
