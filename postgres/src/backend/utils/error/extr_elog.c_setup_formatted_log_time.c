
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pg_time_t ;
struct TYPE_3__ {int tv_usec; scalar_t__ tv_sec; } ;


 int FORMATTED_TS_LEN ;
 scalar_t__ formatted_log_time ;
 int gettimeofday (TYPE_1__*,int *) ;
 int log_timezone ;
 int memcpy (scalar_t__,char*,int) ;
 int pg_localtime (scalar_t__*,int ) ;
 int pg_strftime (scalar_t__,int ,char*,int ) ;
 TYPE_1__ saved_timeval ;
 int saved_timeval_set ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
setup_formatted_log_time(void)
{
 pg_time_t stamp_time;
 char msbuf[13];

 if (!saved_timeval_set)
 {
  gettimeofday(&saved_timeval, ((void*)0));
  saved_timeval_set = 1;
 }

 stamp_time = (pg_time_t) saved_timeval.tv_sec;






 pg_strftime(formatted_log_time, FORMATTED_TS_LEN,

    "%Y-%m-%d %H:%M:%S     %Z",
    pg_localtime(&stamp_time, log_timezone));


 sprintf(msbuf, ".%03d", (int) (saved_timeval.tv_usec / 1000));
 memcpy(formatted_log_time + 19, msbuf, 4);
}
