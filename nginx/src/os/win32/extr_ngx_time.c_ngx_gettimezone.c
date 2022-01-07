
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_3__ {scalar_t__ DaylightBias; scalar_t__ Bias; scalar_t__ StandardBias; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;


 int GetTimeZoneInformation (TYPE_1__*) ;




ngx_int_t
ngx_gettimezone(void)
{
    u_long n;
    TIME_ZONE_INFORMATION tz;

    n = GetTimeZoneInformation(&tz);

    switch (n) {

    case 128:
        return -tz.Bias;

    case 129:
        return -(tz.Bias + tz.StandardBias);

    case 130:
        return -(tz.Bias + tz.DaylightBias);

    default:
        return 0;
    }
}
