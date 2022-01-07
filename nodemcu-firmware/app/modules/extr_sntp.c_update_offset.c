
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_timeval {int tv_sec; } ;


 int get_next_midnight (int) ;
 int next_midnight ;
 int pending_LI ;
 int rtctime_gettimeofday (struct rtc_timeval*) ;
 int sntp_dbg (char*,int,int,...) ;
 int the_offset ;
 scalar_t__ using_offset ;

__attribute__((used)) static void update_offset()
{
}
