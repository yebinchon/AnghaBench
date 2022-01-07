
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ wMonth; } ;
struct TYPE_5__ {int Bias; int StandardBias; TYPE_1__ StandardDate; } ;
typedef TYPE_2__ TIME_ZONE_INFORMATION ;


 int GetTimeZoneInformation (TYPE_2__*) ;
 scalar_t__ __wceex_mktime_internal (struct tm*,scalar_t__) ;

time_t wceex_mktime(struct tm *tmbuff)
{
    time_t offset;
    TIME_ZONE_INFORMATION tzi;

    offset = 0;


 if (GetTimeZoneInformation(&tzi) != 0xFFFFFFFF)
 {
  offset += (tzi.Bias * 60);
  if (tzi.StandardDate.wMonth != 0)
        {
   offset += (tzi.StandardBias * 60);
        }
 }

    return __wceex_mktime_internal(tmbuff, offset);
}
