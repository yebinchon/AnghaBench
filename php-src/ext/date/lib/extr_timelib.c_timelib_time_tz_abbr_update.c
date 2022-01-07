
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tz_abbr; } ;
typedef TYPE_1__ timelib_time ;


 int TIMELIB_TIME_FREE (int *) ;
 size_t strlen (char*) ;
 int * timelib_strdup (char*) ;
 int toupper (char) ;

void timelib_time_tz_abbr_update(timelib_time* tm, char* tz_abbr)
{
 unsigned int i;
 size_t tz_abbr_len = strlen(tz_abbr);

 TIMELIB_TIME_FREE(tm->tz_abbr);
 tm->tz_abbr = timelib_strdup(tz_abbr);
 for (i = 0; i < tz_abbr_len; i++) {
  tm->tz_abbr[i] = toupper(tz_abbr[i]);
 }
}
