
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int rtc_time_cali ;

__attribute__((used)) static uint32_t rtc2usec(uint64_t rtc){
 return (rtc*rtc_time_cali)>>12;
}
