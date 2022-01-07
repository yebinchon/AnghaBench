
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_time_t ;


 int FORMATTED_TS_LEN ;
 int MyStartTime ;
 int formatted_start_time ;
 int log_timezone ;
 int pg_localtime (int *,int ) ;
 int pg_strftime (int ,int ,char*,int ) ;

__attribute__((used)) static void
setup_formatted_start_time(void)
{
 pg_time_t stamp_time = (pg_time_t) MyStartTime;






 pg_strftime(formatted_start_time, FORMATTED_TS_LEN,
    "%Y-%m-%d %H:%M:%S %Z",
    pg_localtime(&stamp_time, log_timezone));
}
