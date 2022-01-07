
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int day; int month; int year; } ;


 scalar_t__ ENC_MODE_CLOCK_SET ;
 int day_config ;
 scalar_t__ encoder_mode ;
 int hour_config ;
 int last_minute ;
 TYPE_1__ last_timespec ;
 int minute_config ;
 int month_config ;
 scalar_t__ time_config_idx ;
 int year_config ;

void post_encoder_mode_change(){
  if(encoder_mode == ENC_MODE_CLOCK_SET){
    hour_config = (last_minute / 60);
    minute_config = last_minute % 60;
    year_config = last_timespec.year;
    month_config = last_timespec.month;
    day_config = last_timespec.day;
    time_config_idx = 0;
  }
}
