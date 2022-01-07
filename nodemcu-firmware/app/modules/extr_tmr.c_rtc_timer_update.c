
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int last_rtc_time ;
 scalar_t__ last_rtc_time_us ;
 int rtc2usec (int) ;
 scalar_t__ rtc_time_cali ;
 int system_get_rtc_time () ;
 scalar_t__ system_rtc_clock_cali_proc () ;

__attribute__((used)) inline static uint64_t rtc_timer_update(bool do_calibration){
 if (do_calibration || rtc_time_cali==0)
  rtc_time_cali=system_rtc_clock_cali_proc();

 uint32_t current = system_get_rtc_time();
 uint32_t since_last=current-last_rtc_time;
 uint32_t us_since_last=rtc2usec(since_last);
 uint64_t now=last_rtc_time_us+us_since_last;



 if (us_since_last>=100000)
 {
  last_rtc_time=current;
  last_rtc_time_us=now;
 }
 return now;
}
