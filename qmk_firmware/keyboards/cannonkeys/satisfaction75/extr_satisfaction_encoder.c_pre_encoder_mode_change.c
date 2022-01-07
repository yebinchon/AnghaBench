
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int millisecond; int day; int month; int year; } ;
typedef TYPE_1__ RTCDateTime ;


 scalar_t__ ENC_MODE_BACKLIGHT ;
 scalar_t__ ENC_MODE_CLOCK_SET ;
 int RTCD1 ;
 int day_config ;
 scalar_t__ encoder_mode ;
 int hour_config ;
 int minute_config ;
 int month_config ;
 int rtcSetTime (int *,TYPE_1__*) ;
 int save_backlight_config_to_eeprom () ;
 int year_config ;

void pre_encoder_mode_change(){
  if(encoder_mode == ENC_MODE_CLOCK_SET){
    RTCDateTime timespec;
    timespec.year = year_config;
    timespec.month = month_config;
    timespec.day = day_config;


    timespec.millisecond = (hour_config * 60 + minute_config) * 60 * 1000;
    rtcSetTime(&RTCD1, &timespec);
  } else if (encoder_mode == ENC_MODE_BACKLIGHT){
    save_backlight_config_to_eeprom();
  }
}
