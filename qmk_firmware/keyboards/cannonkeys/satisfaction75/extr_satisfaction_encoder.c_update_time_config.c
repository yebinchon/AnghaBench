
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int8_t ;


 int day_config ;
 int hour_config ;
 int minute_config ;
 int month_config ;
 int time_config_idx ;
 int year_config ;

void update_time_config(int8_t increment){
  uint8_t day_limit = 31;
  uint16_t adjusted_year = 1980 + year_config;
  switch(time_config_idx){
    case 0:
    default:
      hour_config = (hour_config + increment) % 24;
      if (hour_config < 0){
        hour_config += 24;
      }
      break;
    case 1:
      minute_config = (minute_config + increment) % 60;
      if (minute_config < 0){
        minute_config += 60;
      }
      break;
    case 2:
      year_config += increment;
      break;
    case 3:
      month_config = (month_config % 12) + increment;
      if (month_config <= 0){
        month_config += 12;
      }
      break;
    case 4:
      if (month_config == 9 || month_config == 4 || month_config == 6 || month_config == 11){
        day_limit = 30;
      } else if(month_config == 2){
        day_limit = adjusted_year % 4 == 0 && !(adjusted_year % 100 == 0 && adjusted_year % 400 != 0) ? 29 : 28;
      }
      day_config = (day_config % day_limit) + increment;
      if(day_config <= 0){
        day_config += day_limit;
      }
      break;
  }
}
